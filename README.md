msmtp cookbook
================
[![Cookbook](https://img.shields.io/cookbook/v/msmtp.svg)](https://supermarket.getchef.com/cookbooks/msmtp)
[![Build Status](https://travis-ci.org/infertux/chef-msmtp.svg?branch=master)](https://travis-ci.org/infertux/chef-msmtp)

The msmtp cookbook installs the SMTP client msmtp.

## Platform Support

* Debian


## Attributes

* node['msmtp']['host'] - String. SMTP smarthost.
* node['msmtp']['port'] - Integer. override the mail submission port instead of SMTP port 25.
* node['msmtp']['auth'] - String. authentication enabled. Valid configurations "on", "off".
* node['msmtp']['user'] - String. user to authenticate as to SMTP server.
* node['msmtp']['password'] - String. This stores the password directly in the file. It's generally not recommended to store passwords in plain text files.
* node['msmtp']['from'] - String. Envelope-from address.
* node['msmtp']['aliases'] - Hash.  List of forwarding email address.


## Recipes

* `msmtp::default` - Installs msmtp-mta package, configures `/etc/msmtprc` and `/etc/aliases.msmtp`.

## Usage

### `msmtp::default` recipe

Include the `msmtp::default` in your run_list and in your wrapper cookbook ensure that you have the appropriate attributes configured.

```
    "msmtp": {
      "host": "localhost",
      "port": 587,
      "auth": "on", # on|off
      "user": "mailer",
      "password": "changeme",
      "from": "mailer@localhost",
      "aliases": {
        "root": "admin@example.net"
      }
    }
```

License
-------
MIT
