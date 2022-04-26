# `bot`

A Discord bot.

```coffee
struct 'bot' {
  discord.id 'token' = none
  pool 'intents' = {default}
  str 'prefix' = ""
}
```

## Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `token` | `key` | `discord.id` | The API key of the bot. |
| `intents` | | `slot` | The intents the bot will be subscribed to. |
| `prefix` | `command_prefix` | `(str)s` | The prefix that precedes all commands. |

## Functions

### `create`

```coffee
func create [
  | token = none
  | intents = {none, default, all}
  | prefix = ""
]
```

| option | aliases | type | description |
| :----- | :------ | :--- | :---------- |
