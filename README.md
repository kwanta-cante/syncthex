# Syncthex

This library contains bindings for the [Syncthing rest api](https://docs.syncthing.net/dev/rest.html)

The code is struct based, and the pbf messages from [the syncthing pbf `.proto` files](https://github.com/syncthing/syncthing/tree/main/proto) are the input of the generated code.

## Usage

Follow the instructions in [Installation](#installation)

using `iex -S mix run`

### Example

This example needs the addrs of a syncthing instance and the key for connecting to the rest service.

```elixir
iex> url =  "https://172.17.10.216:8384" # or wherever you instance rund
iex> key = "..." #Syncthing gui key
iex> client = Syncthex.Syncthing.REST.client(%{url: url, key: key})
iex> {:ok, config} = Syncthex.Syncthing.REST.config(client)
iex> config.version
35
```

The `Syncthex.Syncthing` module contains all queries exposed via the rest endpoint.

## Code Generation

code generation is implmented as the task `mix gen_protobuf`, which

- downloads repos containing all external dependencies of synthing's `.proto` files
- adds the prefix declarations like those:

```proto
import "repos/elixir-protobuf/src/elixirpb.proto";
option (elixirpb.file).module_prefix = "Syncthex.Proto.<CamelizedProtoPackage>";
```

- generates code into `lib/generated`
- places the message strucs into the `Synthex.Proto.*` namespace
  **TODO:** use pbf file locations for creating namespaces)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `syncthex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:syncthex, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/syncthex](https://hexdocs.pm/syncthex).
