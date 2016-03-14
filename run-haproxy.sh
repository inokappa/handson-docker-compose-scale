function reachable_consul_server() {
  echo "reachable check for consul_server..."
  ping -c 3 consul_server
}

function start_consul-template() {
  echo "start consul-template..."
  consul-template \
    -consul consul_server:8500 \
    -template "/usr/local/etc/haproxy/haproxy.cfg.ctmpl:/usr/local/etc/haproxy/haproxy.cfg:/root/restart-haproxy.sh"
}

reachable_consul_server
start_consul-template
