package 'msmtp-mta'

template '/etc/msmtprc' do
  owner 'root'
  group 'root'
  mode '0400'
end

file '/etc/aliases.msmtp' do
  owner 'root'
  group 'root'
  mode '0400'
  content \
    node['msmtp']['aliases'].map { |local, to| "#{local}: #{to}" }.join("\n")
end
