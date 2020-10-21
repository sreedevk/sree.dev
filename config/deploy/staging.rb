server "rpi0w", roles: %w{app db web}
set :ssh_options, {
  auth_methods: %w(publickey),
  keys: %w(/home/sreedev/.ssh/id_rsa.pub),
  forward_agent: true,
  user: 'deploy'
}
