defmodule Syncthex.Syncthing.BadProtobufMiddleware do
  require Logger
  def call(env, next, options) do
    env
    |>Tesla.run(next)
    |>patch_enum()
    |> decode()
  end
  def decode({:ok, tesla}) do
    require IEx
    IEx.pry
    Protobuf.JSON.from_decoded(tesla.body, Syncthex.Proto.Configuration)
  end
  def patch_enum({:ok, %{body: %{"defaults"=> %{ "folder" => %{"type"=> type}= folder} }}= tesla}) when is_bitstring(type) do
    new_body=
      tesla.body
      |> put_in(["defaults", "folder"], patch_enum(:folder, folder))
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body: new_body}})
  end
  def patch_enum({:ok,
    %{body:
      %{ "folders" => [%{"type"=> first_type}, _]=folders}
    }=tesla}
    ) when is_bitstring(first_type) do
    new_body=
      %{tesla.body|
       "folders"=> folders
                   |>Enum.map(fn folder->  patch_enum(:folder, folder) end),
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body: new_body}})
  end
  def patch_enum({:ok,
    %{body:
      %{ "options" => %{
        "databaseTuning"=> database_tuning,
        "minHomeDiskFree"=> %{"value" => value} }=options}= config
    }= tesla}
    ) when is_bitstring(database_tuning) or is_integer(value) do
    new_config=
      %{config|
      "options" => patch_enum(:options, options)
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body:  config}})
  end
  def patch_enum({:ok, %{body: %{"defaults"=> %{ "device" => %{"compression"=> compr}= device} }}=tesla}) when is_bitstring(compr) do
    new_body=
      tesla.body
      |> put_in(["defaults", "device","compression"], patch_enum(:compression, compr))
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body: new_body}})
  end
  def patch_enum({:ok, %{body: %{"gui"=> %{ "authMode" => authMode} }}= tesla}) when is_bitstring(authMode) do
    new_body=
      tesla.body
      |> put_in(["gui", "authMode"], patch_enum(:auth_mode, authMode))
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body: new_body}})
  end
  def patch_enum({:ok, %{body: %{"ldap"=> %{ "transport" => transport} }}=tesla}) when is_bitstring(transport) do
    new_body=
      tesla.body
      |> put_in(["ldap", "transport"], patch_enum(:ldap_transport, transport))
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body: new_body}})
  end
  def patch_enum({:ok, %{body: %{ "devices" => [%{"compression"=> compr}= first_device|_]=devices }}=tesla}) when is_bitstring(compr) do
    new_body=
      %{ tesla.body|
        "devices"=> devices
                    |> Enum.map(fn
                      %{"compression"=> compr}=device->
                        %{ device |
                        "compression"=> patch_enum(:compression, compr)}
                      end)
      }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum({:ok, %{tesla| body: new_body}})
  end
  @ldap_transport Syncthex.Proto.LDAPTransport.__message_props__.field_tags
  def patch_enum(:ldap_transport, ldap_transport) when is_bitstring(ldap_transport) do
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    case ldap_transport do
      "plain"-> @ldap_transport[:LDAP_TRANSPORT_PLAIN]
      "tls"  -> @ldap_transport[:LDAP_TRANSPORT_TLS]
      "starttls" -> @ldap_transport[:LDAP_TRANSPORT_START_TLS]
    end
  end
  @auth_mode Syncthex.Proto.AuthMode.__message_props__.field_tags
  def patch_enum(:auth_mode, auth_node) when is_bitstring(auth_node) do
    case auth_node do
      "static"-> @auth_mode[:AUTH_MODE_STATIC]
      "ldap"  -> @auth_mode[:AUTH_MODE_LDAP]
    end
  end
  #finisher for patch_enum/1
  def patch_enum(tesla), do: tesla
  @folder_types Syncthex.Proto.FolderType.__message_props__.field_tags
  def patch_enum(:folder, %{ "type" => type}=folder) when is_bitstring(type) do
    ret = %{folder|
      "type"=> case type do
        "sendreceive"->       @folder_types[:FOLDER_TYPE_SEND_RECEIVE]
        "receiveonly"->       @folder_types[:FOLDER_TYPE_RECEIVE_ONLY]
        "sendonly"->          @folder_types[:FOLDER_TYPE_SEND_ONLY]
        "receiveencrypted" -> @folder_types[:FOLDER_TYPE_RECEIVE_ENCRYPTED]
      end
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder, ret)
  end
  @folder_order Syncthex.Proto.PullOrder.__message_props__.field_tags
  def patch_enum(:folder, %{ "order" => order}=folder) when is_bitstring(order) do
    ret = %{folder|
      "order"=> case order do
        "random"-> @folder_order[:PULL_ORDER_RANDOM]
        "alphabetic"-> @folder_order[:PULL_ORDER_ALPHABETIC]
        "smallestfirst"-> @folder_order[:PULL_ORDER_SMALLEST_FIRST]
        "largestfirst" -> @folder_order[:PULL_ORDER_LARGEST_FIRST]
        "oldestfirst" -> @folder_order[:PULL_ORDER_OLDEST_FIRST]
        "newestfirst" -> @folder_order[:PULL_ORDER_NEWEST_FIRST]

      end
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder, ret)
  end
  @folder_fs_type Syncthex.Proto.FilesystemType.__message_props__.field_tags
  def patch_enum(:folder, %{ "filesystemType" => fs_type}=folder) when is_bitstring(fs_type) do
    ret = %{folder|
      "filesystemType"=> case fs_type do
        "basic"-> @folder_fs_type[:FILESYSTEM_TYPE_BASIC]
        "fake"-> @folder_fs_type[:FILESYSTEM_TYPE_FAKE]
      end
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder, ret)
  end
  def patch_enum(:folder, %{"versioning"=> %{"fsType" => type}=vers}=folder) when is_bitstring(type) do
    ret = %{folder| "versioning"=> patch_enum(:versioning, vers) }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder,ret)
  end

  def patch_enum(:folder, %{"minDiskFree"=> %{"value" => val}=size}=folder) when is_integer(val) do
    ret = %{folder| "minDiskFree" => patch_enum(:size, size) }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder,ret)
  end
  def patch_enum(:options, %{"minHomeDiskFree"=> %{"value" => val}=size}=opts) when is_integer(val) do
    ret = %{opts| "minHomeDiskFree" => patch_enum(:size, size) }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:options,ret)
  end
  def patch_enum(:options, %{"databaseTuning"=> databaseTuning}=opts) when is_bitstring(databaseTuning) do
    ret = %{opts| "databaseTuning" => patch_enum(:database_tuning, databaseTuning) }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:options,ret)
  end
  @database_tuning Syncthex.Proto.Tuning.__message_props__.field_tags
  def patch_enum(:database_tuning, database_tuning) when is_bitstring(database_tuning) do
    ret=
      case database_tuning do
        "auto" -> @compression[:TUNING_AUTO]
        "small"    -> @compression[:TUNING_SMALL]
        "large"   -> @compression[:TUNING_LARGE]
      end
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:database_tuning, ret)
  end
  @folder_block_pull_order Syncthex.Proto.BlockPullOrder.__message_props__.field_tags
  def patch_enum(:folder, %{ "blockPullOrder" => block_pull_order}=folder) when is_bitstring(block_pull_order) do
    ret = %{folder|
      "blockPullOrder"=> case block_pull_order do
        "standard"-> @folder_block_pull_order[:BLOCK_PULL_ORDER_STANDARD]
        "random"-> @folder_block_pull_order[:BLOCK_PULL_ORDER_RANDOM]
        "inorder"-> @folder_block_pull_order[:BLOCK_PULL_ORDER_IN_ORDER]
      end
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder, ret)
  end
  @folder_copy_range_method Syncthex.Proto.CopyRangeMethod.__message_props__.field_tags
  def patch_enum(:folder, %{ "copyRangeMethod" => copy_range_method}=folder) when is_bitstring(copy_range_method) do
    ret = %{folder|
      "copyRangeMethod"=> case copy_range_method do
        "standard"-> @folder_copy_range_method[:COPY_RANGE_METHOD_STANDARD]
        "ioctl"-> @folder_copy_range_method[:COPY_RANGE_METHOD_IOCTL]
        "copyfilerange"-> @folder_copy_range_method[:COPY_RANGE_METHOD_COPY_FILE_RANGE]
        "sendfile"-> @folder_copy_range_method[:COPY_RANGE_METHOD_SEND_FILE]
        "duplicateextents"-> @folder_copy_range_method[:COPY_RANGE_METHOD_DUPLICATE_EXTENTS]
        "allwithfallback"-> @folder_copy_range_method[:COPY_RANGE_METHOD_ALL_WITH_FALLBACK]
      end
    }
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:folder, ret)
  end
  def patch_enum(:versioning, %{"fsType"=> fs_type}=versioning) when is_bitstring(fs_type) do
      ret = %{versioning|
        "fsType"=>
          case fs_type do
            "basic" -> @folder_fs_type[:FILESYSTEM_TYPE_BASIC]
            "fake"  -> @folder_fs_type[:FILESYSTEM_TYPE_FAKE]
          end
      }
      Logger.debug(inspect(Macro.Env.location(__ENV__)))
      patch_enum(:versioning, ret)
  end
  @compression Syncthex.Proto.Compression.__message_props__.field_tags
  def patch_enum(:compression, compression ) when is_bitstring(compression)do
    ret=
      case compression do
        "metadata" -> @compression[:COMPRESSION_METADATA]
        "never"  -> @compression[:COMPRESSION_NEVER]
        "always"  -> @compression[:COMPRESSION_ALWAYS]
      end
    Logger.debug(inspect(Macro.Env.location(__ENV__)))
    patch_enum(:compression, ret)
  end
  def patch_enum(:size, %{"value"=> int}=size ) when is_integer(int),
    do: %{size| "value"=> int/1.0}
  # finisher for patch_enum/2
  def patch_enum(_,ret), do: ret
end
