defmodule Syncthex.Proto.Config.OptionsConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  def descriptor do
    # credo:disable-for-next-line
    %Google.Protobuf.DescriptorProto{
      name: "OptionsConfiguration",
      field: [
        %Google.Protobuf.FieldDescriptorProto{
          name: "listen_addresses",
          extendee: nil,
          number: 1,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "RawListenAddresses"}, {75007, 2, "default"}]
          },
          oneof_index: nil,
          json_name: "listenAddresses",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "global_discovery_servers",
          extendee: nil,
          number: 2,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "RawGlobalAnnServers"},
              {75005, 2, "globalAnnounceServer"},
              {75006, 2, "globalAnnounceServers"},
              {75007, 2, "default"}
            ]
          },
          oneof_index: nil,
          json_name: "globalDiscoveryServers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "global_discovery_enabled",
          extendee: nil,
          number: 3,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "GlobalAnnEnabled"},
              {75005, 2, "globalAnnounceEnabled"},
              {75006, 2, "globalAnnounceEnabled"},
              {75007, 2, "true"}
            ]
          },
          oneof_index: nil,
          json_name: "globalDiscoveryEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "local_discovery_enabled",
          extendee: nil,
          number: 4,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "LocalAnnEnabled"},
              {75005, 2, "localAnnounceEnabled"},
              {75006, 2, "localAnnounceEnabled"},
              {75007, 2, "true"}
            ]
          },
          oneof_index: nil,
          json_name: "localDiscoveryEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "local_announce_port",
          extendee: nil,
          number: 5,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "LocalAnnPort"},
              {75005, 2, "localAnnouncePort"},
              {75006, 2, "localAnnouncePort"},
              {75007, 2, "21027"}
            ]
          },
          oneof_index: nil,
          json_name: "localAnnouncePort",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "local_announce_multicast_address",
          extendee: nil,
          number: 6,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "LocalAnnMCAddr"},
              {75005, 2, "localAnnounceMCAddr"},
              {75006, 2, "localAnnounceMCAddr"},
              {75007, 2, "[ff12::8384]:21027"}
            ]
          },
          oneof_index: nil,
          json_name: "localAnnounceMulticastAddress",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_send_kbps",
          extendee: nil,
          number: 7,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxSendKbps",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_recv_kbps",
          extendee: nil,
          number: 8,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "maxRecvKbps",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "reconnection_interval_s",
          extendee: nil,
          number: 9,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "ReconnectIntervalS"}, {75007, 2, "60"}]
          },
          oneof_index: nil,
          json_name: "reconnectionIntervalS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "relays_enabled",
          extendee: nil,
          number: 10,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "true"}]
          },
          oneof_index: nil,
          json_name: "relaysEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "relays_reconnect_interval_m",
          extendee: nil,
          number: 11,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "RelayReconnectIntervalM"},
              {75005, 2, "relayReconnectIntervalM"},
              {75006, 2, "relayReconnectIntervalM"},
              {75007, 2, "10"}
            ]
          },
          oneof_index: nil,
          json_name: "relaysReconnectIntervalM",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "start_browser",
          extendee: nil,
          number: 12,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "true"}]
          },
          oneof_index: nil,
          json_name: "startBrowser",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "nat_traversal_enabled",
          extendee: nil,
          number: 14,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "NATEnabled"},
              {75005, 2, "natEnabled"},
              {75006, 2, "natEnabled"},
              {75007, 2, "true"}
            ]
          },
          oneof_index: nil,
          json_name: "natTraversalEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "nat_traversal_lease_m",
          extendee: nil,
          number: 15,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "NATLeaseM"},
              {75005, 2, "natLeaseMinutes"},
              {75006, 2, "natLeaseMinutes"},
              {75007, 2, "60"}
            ]
          },
          oneof_index: nil,
          json_name: "natTraversalLeaseM",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "nat_traversal_renewal_m",
          extendee: nil,
          number: 16,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "NATRenewalM"},
              {75005, 2, "natRenewalMinutes"},
              {75006, 2, "natRenewalMinutes"},
              {75007, 2, "30"}
            ]
          },
          oneof_index: nil,
          json_name: "natTraversalRenewalM",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "nat_traversal_timeout_s",
          extendee: nil,
          number: 17,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "NATTimeoutS"},
              {75005, 2, "natTimeoutSeconds"},
              {75006, 2, "natTimeoutSeconds"},
              {75007, 2, "10"}
            ]
          },
          oneof_index: nil,
          json_name: "natTraversalTimeoutS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "usage_reporting_accepted",
          extendee: nil,
          number: 18,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "URAccepted"},
              {75005, 2, "urAccepted"},
              {75006, 2, "urAccepted"}
            ]
          },
          oneof_index: nil,
          json_name: "usageReportingAccepted",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "usage_reporting_seen",
          extendee: nil,
          number: 19,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "URSeen"}, {75005, 2, "urSeen"}, {75006, 2, "urSeen"}]
          },
          oneof_index: nil,
          json_name: "usageReportingSeen",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "usage_reporting_unique_id",
          extendee: nil,
          number: 20,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "URUniqueID"},
              {75005, 2, "urUniqueID"},
              {75006, 2, "urUniqueId"}
            ]
          },
          oneof_index: nil,
          json_name: "usageReportingUniqueId",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "usage_reporting_url",
          extendee: nil,
          number: 21,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "URURL"},
              {75005, 2, "urURL"},
              {75006, 2, "urURL"},
              {75007, 2, "https://data.syncthing.net/newdata"}
            ]
          },
          oneof_index: nil,
          json_name: "usageReportingUrl",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "usage_reporting_post_insecurely",
          extendee: nil,
          number: 22,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "URPostInsecurely"},
              {75005, 2, "urPostInsecurely"},
              {75006, 2, "urPostInsecurely"},
              {75007, 2, "false"}
            ]
          },
          oneof_index: nil,
          json_name: "usageReportingPostInsecurely",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "usage_reporting_initial_delay_s",
          extendee: nil,
          number: 23,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "URInitialDelayS"},
              {75005, 2, "urInitialDelayS"},
              {75006, 2, "urInitialDelayS"},
              {75007, 2, "1800"}
            ]
          },
          oneof_index: nil,
          json_name: "usageReportingInitialDelayS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "auto_upgrade_interval_h",
          extendee: nil,
          number: 25,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "12"}]
          },
          oneof_index: nil,
          json_name: "autoUpgradeIntervalH",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "upgrade_to_pre_releases",
          extendee: nil,
          number: 26,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "upgradeToPreReleases",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "keep_temporaries_h",
          extendee: nil,
          number: 27,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "24"}]
          },
          oneof_index: nil,
          json_name: "keepTemporariesH",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "cache_ignored_files",
          extendee: nil,
          number: 28,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "false"}]
          },
          oneof_index: nil,
          json_name: "cacheIgnoredFiles",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "progress_update_interval_s",
          extendee: nil,
          number: 29,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "5"}]
          },
          oneof_index: nil,
          json_name: "progressUpdateIntervalS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "limit_bandwidth_in_lan",
          extendee: nil,
          number: 30,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "false"}]
          },
          oneof_index: nil,
          json_name: "limitBandwidthInLan",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_home_disk_free",
          extendee: nil,
          number: 31,
          label: :LABEL_OPTIONAL,
          type: :TYPE_MESSAGE,
          type_name: ".config.Size",
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "1 %"}]
          },
          oneof_index: nil,
          json_name: "minHomeDiskFree",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "releases_url",
          extendee: nil,
          number: 32,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "ReleasesURL"},
              {75005, 2, "releasesURL"},
              {75006, 2, "releasesURL"},
              {75007, 2, "https://upgrades.syncthing.net/meta.json"}
            ]
          },
          oneof_index: nil,
          json_name: "releasesUrl",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "always_local_nets",
          extendee: nil,
          number: 33,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "alwaysLocalNets",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "overwrite_remote_device_names_on_connect",
          extendee: nil,
          number: 34,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "OverwriteRemoteDevNames"}, {75007, 2, "false"}]
          },
          oneof_index: nil,
          json_name: "overwriteRemoteDeviceNamesOnConnect",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "temp_index_min_blocks",
          extendee: nil,
          number: 35,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "10"}]
          },
          oneof_index: nil,
          json_name: "tempIndexMinBlocks",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "unacked_notification_ids",
          extendee: nil,
          number: 36,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "UnackedNotificationIDs"},
              {75005, 2, "unackedNotificationID"},
              {75006, 2, "unackedNotificationIDs"}
            ]
          },
          oneof_index: nil,
          json_name: "unackedNotificationIds",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "traffic_class",
          extendee: nil,
          number: 37,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "trafficClass",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "default_folder_path",
          extendee: nil,
          number: 38,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_index: nil,
          json_name: "defaultFolderPath",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "set_low_priority",
          extendee: nil,
          number: 39,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "true"}]
          },
          oneof_index: nil,
          json_name: "setLowPriority",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_folder_concurrency",
          extendee: nil,
          number: 40,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "RawMaxFolderConcurrency"}]
          },
          oneof_index: nil,
          json_name: "maxFolderConcurrency",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "crash_reporting_url",
          extendee: nil,
          number: 41,
          label: :LABEL_OPTIONAL,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "CRURL"},
              {75005, 2, "crashReportingURL"},
              {75006, 2, "crURL"},
              {75007, 2, "https://crash.syncthing.net/newcrash"}
            ]
          },
          oneof_index: nil,
          json_name: "crashReportingUrl",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "crash_reporting_enabled",
          extendee: nil,
          number: 42,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "CREnabled"}, {75007, 2, "true"}]
          },
          oneof_index: nil,
          json_name: "crashReportingEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stun_keepalive_start_s",
          extendee: nil,
          number: 43,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "180"}]
          },
          oneof_index: nil,
          json_name: "stunKeepaliveStartS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stun_keepalive_min_s",
          extendee: nil,
          number: 44,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "20"}]
          },
          oneof_index: nil,
          json_name: "stunKeepaliveMinS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "stun_servers",
          extendee: nil,
          number: 45,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "RawStunServers"}, {75007, 2, "default"}]
          },
          oneof_index: nil,
          json_name: "stunServers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "database_tuning",
          extendee: nil,
          number: 46,
          label: :LABEL_OPTIONAL,
          type: :TYPE_ENUM,
          type_name: ".config.Tuning",
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75008, 0, 1}]
          },
          oneof_index: nil,
          json_name: "databaseTuning",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_concurrent_incoming_request_kib",
          extendee: nil,
          number: 47,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "RawMaxCIRequestKiB"},
              {75005, 2, "maxConcurrentIncomingRequestKiB"},
              {75006, 2, "maxConcurrentIncomingRequestKiB"}
            ]
          },
          oneof_index: nil,
          json_name: "maxConcurrentIncomingRequestKib",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "announce_lan_addresses",
          extendee: nil,
          number: 48,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "AnnounceLANAddresses"},
              {75005, 2, "announceLANAddresses"},
              {75006, 2, "announceLANAddresses"},
              {75007, 2, "true"}
            ]
          },
          oneof_index: nil,
          json_name: "announceLanAddresses",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "send_full_index_on_upgrade",
          extendee: nil,
          number: 49,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "sendFullIndexOnUpgrade",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "feature_flags",
          extendee: nil,
          number: 50,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "featureFlags",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_limit_enough",
          extendee: nil,
          number: 51,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "connectionLimitEnough",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_limit_max",
          extendee: nil,
          number: 52,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: nil,
          oneof_index: nil,
          json_name: "connectionLimitMax",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "insecure_allow_old_tls_versions",
          extendee: nil,
          number: 53,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "InsecureAllowOldTLSVersions"},
              {75005, 2, "insecureAllowOldTLSVersions"},
              {75006, 2, "insecureAllowOldTLSVersions"}
            ]
          },
          oneof_index: nil,
          json_name: "insecureAllowOldTlsVersions",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_priority_tcp_lan",
          extendee: nil,
          number: 54,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "10"}, {75010, 2, "ConnectionPriorityTCPLAN"}]
          },
          oneof_index: nil,
          json_name: "connectionPriorityTcpLan",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_priority_quic_lan",
          extendee: nil,
          number: 55,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "20"}, {75010, 2, "ConnectionPriorityQUICLAN"}]
          },
          oneof_index: nil,
          json_name: "connectionPriorityQuicLan",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_priority_tcp_wan",
          extendee: nil,
          number: 56,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "30"}, {75010, 2, "ConnectionPriorityTCPWAN"}]
          },
          oneof_index: nil,
          json_name: "connectionPriorityTcpWan",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_priority_quic_wan",
          extendee: nil,
          number: 57,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "40"}, {75010, 2, "ConnectionPriorityQUICWAN"}]
          },
          oneof_index: nil,
          json_name: "connectionPriorityQuicWan",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_priority_relay",
          extendee: nil,
          number: 58,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "50"}]
          },
          oneof_index: nil,
          json_name: "connectionPriorityRelay",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "connection_priority_upgrade_threshold",
          extendee: nil,
          number: 59,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: false,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75007, 2, "0"}]
          },
          oneof_index: nil,
          json_name: "connectionPriorityUpgradeThreshold",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "upnp_enabled",
          extendee: nil,
          number: 9000,
          label: :LABEL_OPTIONAL,
          type: :TYPE_BOOL,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [{75010, 2, "DeprecatedUPnPEnabled"}]
          },
          oneof_index: nil,
          json_name: "upnpEnabled",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "upnp_lease_m",
          extendee: nil,
          number: 9001,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "DeprecatedUPnPLeaseM"},
              {75005, 2, "upnpLeaseMinutes,omitempty"}
            ]
          },
          oneof_index: nil,
          json_name: "upnpLeaseM",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "upnp_renewal_m",
          extendee: nil,
          number: 9002,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "DeprecatedUPnPRenewalM"},
              {75005, 2, "upnpRenewalMinutes,omitempty"}
            ]
          },
          oneof_index: nil,
          json_name: "upnpRenewalM",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "upnp_timeout_s",
          extendee: nil,
          number: 9003,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: [
              {75010, 2, "DeprecatedUPnPTimeoutS"},
              {75005, 2, "upnpTimeoutSeconds,omitempty"}
            ]
          },
          oneof_index: nil,
          json_name: "upnpTimeoutS",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "relay_servers",
          extendee: nil,
          number: 9004,
          label: :LABEL_REPEATED,
          type: :TYPE_STRING,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_index: nil,
          json_name: "relayServers",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "min_home_disk_free_pct",
          extendee: nil,
          number: 9005,
          label: :LABEL_OPTIONAL,
          type: :TYPE_DOUBLE,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_index: nil,
          json_name: "minHomeDiskFreePct",
          proto3_optional: nil,
          __unknown_fields__: []
        },
        %Google.Protobuf.FieldDescriptorProto{
          name: "max_concurrent_scans",
          extendee: nil,
          number: 9006,
          label: :LABEL_OPTIONAL,
          type: :TYPE_INT32,
          type_name: nil,
          default_value: nil,
          options: %Google.Protobuf.FieldOptions{
            ctype: :STRING,
            packed: nil,
            deprecated: true,
            lazy: false,
            jstype: :JS_NORMAL,
            weak: false,
            unverified_lazy: false,
            debug_redact: false,
            uninterpreted_option: [],
            __pb_extensions__: %{},
            __unknown_fields__: []
          },
          oneof_index: nil,
          json_name: "maxConcurrentScans",
          proto3_optional: nil,
          __unknown_fields__: []
        }
      ],
      nested_type: [],
      enum_type: [],
      extension_range: [],
      extension: [],
      options: nil,
      oneof_decl: [],
      reserved_range: [],
      reserved_name: [],
      __unknown_fields__: []
    }
  end

  field :listen_addresses, 1,
    repeated: true,
    type: :string,
    json_name: "listenAddresses",
    deprecated: false

  field :global_discovery_servers, 2,
    repeated: true,
    type: :string,
    json_name: "globalDiscoveryServers",
    deprecated: false

  field :global_discovery_enabled, 3,
    type: :bool,
    json_name: "globalDiscoveryEnabled",
    deprecated: false

  field :local_discovery_enabled, 4,
    type: :bool,
    json_name: "localDiscoveryEnabled",
    deprecated: false

  field :local_announce_port, 5, type: :int32, json_name: "localAnnouncePort", deprecated: false

  field :local_announce_multicast_address, 6,
    type: :string,
    json_name: "localAnnounceMulticastAddress",
    deprecated: false

  field :max_send_kbps, 7, type: :int32, json_name: "maxSendKbps"
  field :max_recv_kbps, 8, type: :int32, json_name: "maxRecvKbps"

  field :reconnection_interval_s, 9,
    type: :int32,
    json_name: "reconnectionIntervalS",
    deprecated: false

  field :relays_enabled, 10, type: :bool, json_name: "relaysEnabled", deprecated: false

  field :relays_reconnect_interval_m, 11,
    type: :int32,
    json_name: "relaysReconnectIntervalM",
    deprecated: false

  field :start_browser, 12, type: :bool, json_name: "startBrowser", deprecated: false

  field :nat_traversal_enabled, 14,
    type: :bool,
    json_name: "natTraversalEnabled",
    deprecated: false

  field :nat_traversal_lease_m, 15,
    type: :int32,
    json_name: "natTraversalLeaseM",
    deprecated: false

  field :nat_traversal_renewal_m, 16,
    type: :int32,
    json_name: "natTraversalRenewalM",
    deprecated: false

  field :nat_traversal_timeout_s, 17,
    type: :int32,
    json_name: "natTraversalTimeoutS",
    deprecated: false

  field :usage_reporting_accepted, 18,
    type: :int32,
    json_name: "usageReportingAccepted",
    deprecated: false

  field :usage_reporting_seen, 19,
    type: :int32,
    json_name: "usageReportingSeen",
    deprecated: false

  field :usage_reporting_unique_id, 20,
    type: :string,
    json_name: "usageReportingUniqueId",
    deprecated: false

  field :usage_reporting_url, 21, type: :string, json_name: "usageReportingUrl", deprecated: false

  field :usage_reporting_post_insecurely, 22,
    type: :bool,
    json_name: "usageReportingPostInsecurely",
    deprecated: false

  field :usage_reporting_initial_delay_s, 23,
    type: :int32,
    json_name: "usageReportingInitialDelayS",
    deprecated: false

  field :auto_upgrade_interval_h, 25,
    type: :int32,
    json_name: "autoUpgradeIntervalH",
    deprecated: false

  field :upgrade_to_pre_releases, 26, type: :bool, json_name: "upgradeToPreReleases"
  field :keep_temporaries_h, 27, type: :int32, json_name: "keepTemporariesH", deprecated: false
  field :cache_ignored_files, 28, type: :bool, json_name: "cacheIgnoredFiles", deprecated: false

  field :progress_update_interval_s, 29,
    type: :int32,
    json_name: "progressUpdateIntervalS",
    deprecated: false

  field :limit_bandwidth_in_lan, 30,
    type: :bool,
    json_name: "limitBandwidthInLan",
    deprecated: false

  field :min_home_disk_free, 31,
    type: Syncthex.Proto.Config.Size,
    json_name: "minHomeDiskFree",
    deprecated: false

  field :releases_url, 32, type: :string, json_name: "releasesUrl", deprecated: false
  field :always_local_nets, 33, repeated: true, type: :string, json_name: "alwaysLocalNets"

  field :overwrite_remote_device_names_on_connect, 34,
    type: :bool,
    json_name: "overwriteRemoteDeviceNamesOnConnect",
    deprecated: false

  field :temp_index_min_blocks, 35,
    type: :int32,
    json_name: "tempIndexMinBlocks",
    deprecated: false

  field :unacked_notification_ids, 36,
    repeated: true,
    type: :string,
    json_name: "unackedNotificationIds",
    deprecated: false

  field :traffic_class, 37, type: :int32, json_name: "trafficClass"
  field :default_folder_path, 38, type: :string, json_name: "defaultFolderPath", deprecated: true
  field :set_low_priority, 39, type: :bool, json_name: "setLowPriority", deprecated: false

  field :max_folder_concurrency, 40,
    type: :int32,
    json_name: "maxFolderConcurrency",
    deprecated: false

  field :crash_reporting_url, 41, type: :string, json_name: "crashReportingUrl", deprecated: false

  field :crash_reporting_enabled, 42,
    type: :bool,
    json_name: "crashReportingEnabled",
    deprecated: false

  field :stun_keepalive_start_s, 43,
    type: :int32,
    json_name: "stunKeepaliveStartS",
    deprecated: false

  field :stun_keepalive_min_s, 44, type: :int32, json_name: "stunKeepaliveMinS", deprecated: false

  field :stun_servers, 45,
    repeated: true,
    type: :string,
    json_name: "stunServers",
    deprecated: false

  field :database_tuning, 46,
    type: Syncthex.Proto.Config.Tuning,
    json_name: "databaseTuning",
    enum: true,
    deprecated: false

  field :max_concurrent_incoming_request_kib, 47,
    type: :int32,
    json_name: "maxConcurrentIncomingRequestKib",
    deprecated: false

  field :announce_lan_addresses, 48,
    type: :bool,
    json_name: "announceLanAddresses",
    deprecated: false

  field :send_full_index_on_upgrade, 49, type: :bool, json_name: "sendFullIndexOnUpgrade"
  field :feature_flags, 50, repeated: true, type: :string, json_name: "featureFlags"
  field :connection_limit_enough, 51, type: :int32, json_name: "connectionLimitEnough"
  field :connection_limit_max, 52, type: :int32, json_name: "connectionLimitMax"

  field :insecure_allow_old_tls_versions, 53,
    type: :bool,
    json_name: "insecureAllowOldTlsVersions",
    deprecated: false

  field :connection_priority_tcp_lan, 54,
    type: :int32,
    json_name: "connectionPriorityTcpLan",
    deprecated: false

  field :connection_priority_quic_lan, 55,
    type: :int32,
    json_name: "connectionPriorityQuicLan",
    deprecated: false

  field :connection_priority_tcp_wan, 56,
    type: :int32,
    json_name: "connectionPriorityTcpWan",
    deprecated: false

  field :connection_priority_quic_wan, 57,
    type: :int32,
    json_name: "connectionPriorityQuicWan",
    deprecated: false

  field :connection_priority_relay, 58,
    type: :int32,
    json_name: "connectionPriorityRelay",
    deprecated: false

  field :connection_priority_upgrade_threshold, 59,
    type: :int32,
    json_name: "connectionPriorityUpgradeThreshold",
    deprecated: false

  field :upnp_enabled, 9000, type: :bool, json_name: "upnpEnabled", deprecated: true
  field :upnp_lease_m, 9001, type: :int32, json_name: "upnpLeaseM", deprecated: true
  field :upnp_renewal_m, 9002, type: :int32, json_name: "upnpRenewalM", deprecated: true
  field :upnp_timeout_s, 9003, type: :int32, json_name: "upnpTimeoutS", deprecated: true

  field :relay_servers, 9004,
    repeated: true,
    type: :string,
    json_name: "relayServers",
    deprecated: true

  field :min_home_disk_free_pct, 9005,
    type: :double,
    json_name: "minHomeDiskFreePct",
    deprecated: true

  field :max_concurrent_scans, 9006,
    type: :int32,
    json_name: "maxConcurrentScans",
    deprecated: true
end