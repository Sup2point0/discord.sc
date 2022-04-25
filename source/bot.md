# `bot`

A Discord bot.

```coffee
struct 'bot' {
  sys.token 'token' = none
  pool 'intents' = {default}
  str 'prefix' = ""
}
```

## Properties

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |
| `token` | `discord.token` | `key` | The API key of the bot. |
| `intents` | `slot` | | The intents the bot will be subscribed to. |
| `prefix` | `str`, `list[str]` | `command_prefix` | The prefix that precedes all commands. |

## Functions

### `create`

```coffee
func create [
  | token = none
  | intents = {discord.intents({none, default, all})}
  | prefix = ""
]
```

| option | type | aliases | description |
| :----- | :--- | :------ | :---------- |
