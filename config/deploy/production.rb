server "ec2-18-191-218-29.us-east-2.compute.amazonaws.com", roles: %w{app db web}
set :ssh_options, {
  auth_methods: %w(publickey),
  keys: %w(/home/sreedev/Desktop/projects/sreedev_prod/dev_prod.pem),
  forward_agent: true,
  user: 'ubuntu'
}
