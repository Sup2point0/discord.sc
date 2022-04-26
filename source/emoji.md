# `emoji`

A Discord emoji.

```coffee
struct 'emoji' {
  stat discord.id 'id'
  
  evo func 'str'
}
```

## Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `id` | | `discord.id` | The id of the emoji used by Discord for identification. |

## Functions

### `create`

```coffee
func create(ctx = void, id)
```

#### Options

| option | aliases | type | description |
| :----- | :------ | :--- | :---------- |
| `ctx` | `context` | `ctx` | The name of the emoji. If not provided, the first argument should be the id of the emoji. |
| `id` | | `discord.id` | The id of the emoji used by Discord for identification. |
