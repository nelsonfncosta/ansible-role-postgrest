[Unit]
Description=PostgREST server daemon
After=network.target postgresql.service

[Service]
User={{ postgrest_service_user }}

ExecStart={{ postgrest_bin_path }}/{{postgrest_bin_name}} {{ postgrest_conf_path }}
ExecReload=/bin/kill -HUP $MAINPID
Restart=on-failure

[Install]
WantedBy=multi-user.target
