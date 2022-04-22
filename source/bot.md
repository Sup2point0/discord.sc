# `bot`

A Discord bot.

```coffee
struct 'bot' {
  sys.token 'token' = none
  discord.intents 'intents' = discord.intents('default')
  str 'prefix' = ""
}
```

## Properties

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |

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
