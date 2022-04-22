# `emoji`

A Discord emoji.

```swift
struct 'emoji' {
  prop 'id'
  
  synth func 'str'
}
```

## Properties

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |
| `id` | `id[int]` | | The id of the emoji used by Discord to identify it. |

## Functions

### `create`

```swift
func create(ctx = void, id)
```

#### Options

| option | type | aliases | description |
| :----- | :--- | :------ | :---------- |
| `ctx` | `ctx` | `context` | The name of the emoji. If not provided, the first argument should be the id of the emoji. |
| `id` | `id[int]` | | The id of the emoji used by Discord to identify it. |
