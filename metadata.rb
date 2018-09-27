name             'msmtp'
maintainer       'Cédric Félizard'
maintainer_email 'cedric@felizard.fr'
license          'MIT'
description      'Installs and configures msmtp MTA'
source_url       'https://github.com/infertux/chef-msmtp'
issues_url       'https://github.com/infertux/chef-msmtp/issues'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.0'
chef_version     '>= 14'

supports 'debian', '>= 9.5'
