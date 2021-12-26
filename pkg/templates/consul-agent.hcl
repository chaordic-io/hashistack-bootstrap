datacenter = "dc1"
data_dir = "/opt/consul"
encrypt = "{{.GossipKey}}"
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true

server = false

ca_file = "/etc/consul.d/certs/consul-agent-ca.pem"

auto_encrypt {
  tls = true
}

retry_join = [{{ range $key, $value := .NodeIPs }}"{{$value}}",{{ end }}]