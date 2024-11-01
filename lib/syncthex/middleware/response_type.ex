defmodule Syncthex.Middleware.ResponseType do
  require Logger
  @behaviour Tesla.Middleware
  @moduledoc """
  Middleware to induce the rest endpoint result types from the url.
  The type is injected as option when invoking `&Syncthex.Middleware.Decoder.call/3`
  """
  def call(env, next, options) do
    type = first_match(options[:type_to_url], env.url)

    next =
      next
      |> with_decoder_type_info(type)

    env
    |> Tesla.run(next)
  end

  # This sets the call option `result_type` of #{Syncthex.Middleware.Decoder}
  def with_decoder_type_info([{Syncthex.Middleware.Decoder, :call, [opts]} | rest], type) do
    [{Syncthex.Middleware.Decoder, :call, [[{:result_type, type} | opts]]} | rest]
  end

  def with_decoder_type_info([head | rest], type),
    do: [head | with_decoder_type_info(rest, type)]

  def with_decoder_type_info([], type) do
    Logger.warn("""
    No #{Syncthex.Middleware.Decoder} middleware found after #{__MODULE__}.
    This plugin cannot influence the Requests result to set the response type to#{type}
    """)

    []
  end

  def first_match([{type_mod, {url, opts}} | rest], cmp_url) when is_bitstring(url) do
    case cmp_url do
      ^url ->
        if opts[:array] do
          [type_mod]
        else
          type_mod
        end

      _ ->
        first_match(rest, cmp_url)
    end
  end

  def first_match([{type_mod, {%Regex{} = url, opts}} | rest], cmp_url) do
    if Regex.match?(url, cmp_url) do
      if opts[:array] do
        [type_mod]
      else
        type_mod
      end
    else
      first_match(rest, cmp_url)
    end
  end

  # transform shortform configuration into the longform
  def first_match([{type_mod, %Regex{} = url} | rest], cmp_url),
    do: first_match([{type_mod, {url, []}} | rest], cmp_url)

  def first_match([{type_mod, url} | rest], cmp_url) when is_bitstring(url),
    do: first_match([{type_mod, {url, []}} | rest], cmp_url)
end
