tee $HOME/celestia-appd.service > /dev/null <<EOF
[Unit]
  Description=celestia-appd Cosmos daemon
  After=network-online.target
[Service]
  User=$USER
  ExecStart=$(which celestia-appd) start
  Restart=on-failure
  RestartSec=3
  LimitNOFILE=65535
[Install]
  WantedBy=multi-user.target
EOF
