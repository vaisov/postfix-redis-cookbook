# postfix-redis Cookbook

Installs postfix and redis. Sets up postfix to forward all emails to user 'toredis' which stores all emails to redis.

### Platforms

- CentoOS 7

### Chef

- Chef 12.0 or later

## Usage

### postfix-redis::default

Just include `postfix-redis` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[postfix-redis]"
  ]
}
```
## Script usage

```
cd /home/toredis
# Read messages from redis:
./store_to_redis.py -r email@domain.com

Authors: Sebastian Vaisov

