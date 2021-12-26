datacenter = "{{.DCName}}"
data_dir = "/opt/consul"
encrypt = "{{.GossipKey}}"
verify_incoming = true
verify_outgoing = true
verify_server_hostname = true

client_addr = "0.0.0.0"
server = true
bootstrap_expect = {{.NoOfServers}}

ca_file = "/etc/consul.d/certs/consul-agent-ca.pem"
cert_file = "/etc/consul.d/certs/{{.DCName}}-server-consul-0.pem"
key_file = "/etc/consul.d/certs/{{.DCName}}-server-consul-0-key.pem"

auto_encrypt {
  allow_tls = true
}

retry_join = [{{ range $key, $value := .NodeIPs }}"{{$value}}",{{ end }}]

ui_config {
  enabled = true
}