# Storage Configuration

## Introduction

This is the main database settings file for PlotSquared.

*Located in:* `/plugins/PlotSquared/config/storage.yml`
If you are using SQLite, the `storage.db` is located in `/plugins/PlotSquared/storage.db`

## Default

```yaml
prefix: ''

# SQLite section
sqlite:
  # Should SQLite be used?
  use: true
  # The file to use
  db: "storage"

# MySQL section
mysql:
  # Should MySQL be used?
  use: false
  host: "localhost"
  port: "3306"
  user: "root"
  password: "password"
  database: "plot_db"
  # Set additional properties: https://dev.mysql.com/doc/connector-j/en/connector-j-reference-configuration-properties.html
  properties:
    - "useSSL=false"
```
