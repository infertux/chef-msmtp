default['msmtp']['aliases_map'] = {}

default['msmtp']['aliases'] = '/etc/aliases.msmtp'
default['msmtp']['tls'] = 'on'
default['msmtp']['tls_trust_file'] = '/etc/ssl/certs/ca-certificates.crt'

# Syslog logging with facility LOG_MAIL instead of the default LOG_USER
default['msmtp']['syslog'] = 'LOG_MAIL'
