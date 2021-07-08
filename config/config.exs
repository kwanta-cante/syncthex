import Config


config :syncthex,
  url: "https://172.17.10.216:8384",
  key: "c7KkYqZmEwct6m9NY9Rz63iWu9ud3VNk",
  api_cert: {:SYSTEM_HOME, ".config/syncthing/https-cert.pem"},
  protobuf_def_glob: [
    #"proto/*.proto"
    # "proto/gogo.proto",
    # "proto/descriptor.proto",
    # "proto/bep.proto",
    # "proto/ext.proto"
    #"proto/local.proto"

    "repos/protobuf/protobuf/google/protobuf/descriptor.proto",
    "lib/protocol/bep.proto",
    "lib/discover/local.proto",
    "repos/protobuf/gogoproto/gogo.proto",

  ] |> Enum.map(fn f-> "proto/syncthing/proto/"<>f end)

config :tesla, adapter: Tesla.Adapter.Hackney
