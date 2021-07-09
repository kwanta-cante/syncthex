defmodule Syncthex.Proto.OptionsConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          listen_addresses: String.t(),
          global_discovery_servers: String.t(),
          global_discovery_enabled: boolean,
          local_discovery_enabled: boolean,
          local_announce_port: integer,
          local_announce_multicast_address: String.t(),
          max_send_kbps: integer,
          max_recv_kbps: integer,
          reconnection_interval_s: integer,
          relays_enabled: boolean,
          relays_reconnect_interval_m: integer,
          start_browser: boolean,
          nat_traversal_enabled: boolean,
          nat_traversal_lease_m: integer,
          nat_traversal_renewal_m: integer,
          nat_traversal_timeout_s: integer,
          usage_reporting_accepted: integer,
          usage_reporting_seen: integer,
          usage_reporting_unique_id: String.t(),
          usage_reporting_url: String.t(),
          usage_reporting_post_insecurely: boolean,
          usage_reporting_initial_delay_s: integer,
          restart_on_wakeup: boolean,
          auto_upgrade_interval_h: integer,
          upgrade_to_pre_releases: boolean,
          keep_temporaries_h: integer,
          cache_ignored_files: boolean,
          progress_update_interval_s: integer,
          limit_bandwidth_in_lan: boolean,
          min_home_disk_free: Syncthex.Proto.Size.t() | nil,
          releases_url: String.t(),
          always_local_nets: String.t(),
          overwrite_remote_device_names_on_connect: boolean,
          temp_index_min_blocks: integer,
          unacked_notification_ids: String.t(),
          traffic_class: integer,
          default_folder_path: String.t(),
          set_low_priority: boolean,
          max_folder_concurrency: integer,
          crash_reporting_url: String.t(),
          crash_reporting_enabled: boolean,
          stun_keepalive_start_s: integer,
          stun_keepalive_min_s: integer,
          stun_servers: String.t(),
          database_tuning: Syncthex.Proto.Tuning.t(),
          max_concurrent_incoming_request_kib: integer,
          announce_lan_addresses: boolean,
          send_full_index_on_upgrade: boolean,
          feature_flags: String.t(),
          connection_limit_enough: integer,
          connection_limit_max: integer,
          insecure_allow_old_tls_versions: boolean,
          upnp_enabled: boolean,
          upnp_lease_m: integer,
          upnp_renewal_m: integer,
          upnp_timeout_s: integer,
          relay_servers: String.t(),
          min_home_disk_free_pct: float | :infinity | :negative_infinity | :nan,
          max_concurrent_scans: integer
        }

  defstruct [
    :listen_addresses,
    :global_discovery_servers,
    :global_discovery_enabled,
    :local_discovery_enabled,
    :local_announce_port,
    :local_announce_multicast_address,
    :max_send_kbps,
    :max_recv_kbps,
    :reconnection_interval_s,
    :relays_enabled,
    :relays_reconnect_interval_m,
    :start_browser,
    :nat_traversal_enabled,
    :nat_traversal_lease_m,
    :nat_traversal_renewal_m,
    :nat_traversal_timeout_s,
    :usage_reporting_accepted,
    :usage_reporting_seen,
    :usage_reporting_unique_id,
    :usage_reporting_url,
    :usage_reporting_post_insecurely,
    :usage_reporting_initial_delay_s,
    :restart_on_wakeup,
    :auto_upgrade_interval_h,
    :upgrade_to_pre_releases,
    :keep_temporaries_h,
    :cache_ignored_files,
    :progress_update_interval_s,
    :limit_bandwidth_in_lan,
    :min_home_disk_free,
    :releases_url,
    :always_local_nets,
    :overwrite_remote_device_names_on_connect,
    :temp_index_min_blocks,
    :unacked_notification_ids,
    :traffic_class,
    :default_folder_path,
    :set_low_priority,
    :max_folder_concurrency,
    :crash_reporting_url,
    :crash_reporting_enabled,
    :stun_keepalive_start_s,
    :stun_keepalive_min_s,
    :stun_servers,
    :database_tuning,
    :max_concurrent_incoming_request_kib,
    :announce_lan_addresses,
    :send_full_index_on_upgrade,
    :feature_flags,
    :connection_limit_enough,
    :connection_limit_max,
    :insecure_allow_old_tls_versions,
    :upnp_enabled,
    :upnp_lease_m,
    :upnp_renewal_m,
    :upnp_timeout_s,
    :relay_servers,
    :min_home_disk_free_pct,
    :max_concurrent_scans
  ]

  field :listen_addresses, 1, repeated: true, type: :string, json_name: "listenAddresses"

  field :global_discovery_servers, 2,
    repeated: true,
    type: :string,
    json_name: "globalDiscoveryServers"

  field :global_discovery_enabled, 3, type: :bool, json_name: "globalDiscoveryEnabled"
  field :local_discovery_enabled, 4, type: :bool, json_name: "localDiscoveryEnabled"
  field :local_announce_port, 5, type: :int32, json_name: "localAnnouncePort"

  field :local_announce_multicast_address, 6,
    type: :string,
    json_name: "localAnnounceMulticastAddress"

  field :max_send_kbps, 7, type: :int32, json_name: "maxSendKbps"
  field :max_recv_kbps, 8, type: :int32, json_name: "maxRecvKbps"
  field :reconnection_interval_s, 9, type: :int32, json_name: "reconnectionIntervalS"
  field :relays_enabled, 10, type: :bool, json_name: "relaysEnabled"
  field :relays_reconnect_interval_m, 11, type: :int32, json_name: "relaysReconnectIntervalM"
  field :start_browser, 12, type: :bool, json_name: "startBrowser"
  field :nat_traversal_enabled, 14, type: :bool, json_name: "natTraversalEnabled"
  field :nat_traversal_lease_m, 15, type: :int32, json_name: "natTraversalLeaseM"
  field :nat_traversal_renewal_m, 16, type: :int32, json_name: "natTraversalRenewalM"
  field :nat_traversal_timeout_s, 17, type: :int32, json_name: "natTraversalTimeoutS"
  field :usage_reporting_accepted, 18, type: :int32, json_name: "usageReportingAccepted"
  field :usage_reporting_seen, 19, type: :int32, json_name: "usageReportingSeen"
  field :usage_reporting_unique_id, 20, type: :string, json_name: "usageReportingUniqueId"
  field :usage_reporting_url, 21, type: :string, json_name: "usageReportingUrl"

  field :usage_reporting_post_insecurely, 22,
    type: :bool,
    json_name: "usageReportingPostInsecurely"

  field :usage_reporting_initial_delay_s, 23,
    type: :int32,
    json_name: "usageReportingInitialDelayS"

  field :restart_on_wakeup, 24, type: :bool, json_name: "restartOnWakeup"
  field :auto_upgrade_interval_h, 25, type: :int32, json_name: "autoUpgradeIntervalH"
  field :upgrade_to_pre_releases, 26, type: :bool, json_name: "upgradeToPreReleases"
  field :keep_temporaries_h, 27, type: :int32, json_name: "keepTemporariesH"
  field :cache_ignored_files, 28, type: :bool, json_name: "cacheIgnoredFiles"
  field :progress_update_interval_s, 29, type: :int32, json_name: "progressUpdateIntervalS"
  field :limit_bandwidth_in_lan, 30, type: :bool, json_name: "limitBandwidthInLan"
  field :min_home_disk_free, 31, type: Syncthex.Proto.Size, json_name: "minHomeDiskFree"
  field :releases_url, 32, type: :string, json_name: "releasesUrl"
  field :always_local_nets, 33, repeated: true, type: :string, json_name: "alwaysLocalNets"

  field :overwrite_remote_device_names_on_connect, 34,
    type: :bool,
    json_name: "overwriteRemoteDeviceNamesOnConnect"

  field :temp_index_min_blocks, 35, type: :int32, json_name: "tempIndexMinBlocks"

  field :unacked_notification_ids, 36,
    repeated: true,
    type: :string,
    json_name: "unackedNotificationIds"

  field :traffic_class, 37, type: :int32, json_name: "trafficClass"
  field :default_folder_path, 38, type: :string, deprecated: true, json_name: "defaultFolderPath"
  field :set_low_priority, 39, type: :bool, json_name: "setLowPriority"
  field :max_folder_concurrency, 40, type: :int32, json_name: "maxFolderConcurrency"
  field :crash_reporting_url, 41, type: :string, json_name: "crashReportingUrl"
  field :crash_reporting_enabled, 42, type: :bool, json_name: "crashReportingEnabled"
  field :stun_keepalive_start_s, 43, type: :int32, json_name: "stunKeepaliveStartS"
  field :stun_keepalive_min_s, 44, type: :int32, json_name: "stunKeepaliveMinS"
  field :stun_servers, 45, repeated: true, type: :string, json_name: "stunServers"
  field :database_tuning, 46, type: Syncthex.Proto.Tuning, enum: true, json_name: "databaseTuning"

  field :max_concurrent_incoming_request_kib, 47,
    type: :int32,
    json_name: "maxConcurrentIncomingRequestKib"

  field :announce_lan_addresses, 48, type: :bool, json_name: "announceLanAddresses"
  field :send_full_index_on_upgrade, 49, type: :bool, json_name: "sendFullIndexOnUpgrade"
  field :feature_flags, 50, repeated: true, type: :string, json_name: "featureFlags"
  field :connection_limit_enough, 51, type: :int32, json_name: "connectionLimitEnough"
  field :connection_limit_max, 52, type: :int32, json_name: "connectionLimitMax"

  field :insecure_allow_old_tls_versions, 53,
    type: :bool,
    json_name: "insecureAllowOldTlsVersions"

  field :upnp_enabled, 9000, type: :bool, deprecated: true, json_name: "upnpEnabled"
  field :upnp_lease_m, 9001, type: :int32, deprecated: true, json_name: "upnpLeaseM"
  field :upnp_renewal_m, 9002, type: :int32, deprecated: true, json_name: "upnpRenewalM"
  field :upnp_timeout_s, 9003, type: :int32, deprecated: true, json_name: "upnpTimeoutS"

  field :relay_servers, 9004,
    repeated: true,
    type: :string,
    deprecated: true,
    json_name: "relayServers"

  field :min_home_disk_free_pct, 9005,
    type: :double,
    deprecated: true,
    json_name: "minHomeDiskFreePct"

  field :max_concurrent_scans, 9006,
    type: :int32,
    deprecated: true,
    json_name: "maxConcurrentScans"
end
