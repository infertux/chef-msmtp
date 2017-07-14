msmtp cookbook
================
[![Cookbook](https://img.shields.io/cookbook/v/msmtp.svg)](https://supermarket.getchef.com/cookbooks/msmtp)
[![Build Status](https://travis-ci.org/infertux/chef-msmtp.svg?branch=master)](https://travis-ci.org/infertux/chef-msmtp)

Usage
-----

### `msmtp::default` recipe

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
