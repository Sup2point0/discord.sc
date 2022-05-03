# `bot`
A Discord bot.

```coffee
struct 'bot' {
  discord.id 'token' = none
  pool 'intents' = {default}
  str 'prefix' = ""
}
```

<br>

# Properties
| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `token` | `key` | `discord.token` | API key of the bot. |
| `intents` | | `slot` | Intents the bot will be subscribed to. |
| `prefix` | `command_prefix` | `(str)s` | Prefix that precedes all commands. |

<br>

# Functions
| function | output | description |
| :------- | :----- | :---------- |
| `create` | `bot` | Creates a bot. |


## `create`
Creates a bot.

```coffee
evo func create [
  | token = none
  | intents = {none, default, all}
  | prefix = ""
]
```

| option | aliases | type | description |
| :----- | :------ | :--- | :---------- |
