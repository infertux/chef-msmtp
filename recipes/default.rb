package 'msmtp-mta'

template '/etc/msmtprc' do
  owner 'root'
  group 'root'
  mode '0400'
  variables(config: node['msmtp'].reject { |key| %w[aliases_map].include?(key) })
end

file '/etc/aliases.msmtp' do
  owner 'root'
  group 'root'
  mode '0400'
  content \
    node['msmtp']['aliases_map'].map { |local, to| "#{local}: #{to}" }.join("\n")
end
