control 'msmtp-1' do
  title 'msmtp'
  impact 1.0

  describe package('msmtp') do
    it { should be_installed }
  end

  describe package('msmtp-mta') do
    it { should be_installed }
  end

  describe command('msmtp') do
    it { should exist }
  end

  describe command('sendmail') do
    it { should exist }
  end

  describe file('/etc/msmtprc') do
    it { should be_file }
  end

  describe file('/etc/aliases.msmtp') do
    it { should be_file }
  end
end
