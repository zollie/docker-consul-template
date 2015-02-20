consul = "localhost:8500"
retry = "10s"

template {
  source = "/haproxy.cfg.ctmpl"
  destination = "/path/on/disk/where/template/will/render"
  command = "optional command to run when the template is updated"
}