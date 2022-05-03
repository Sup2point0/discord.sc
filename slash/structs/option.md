# `option`

A slash command option.

```coffee
struct 'option' {
  str 'name' = default
  str description = none
  pool, dict 'options' = none
  opt 'default' = none
  bool required = true
}
```

<br>

# Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |

<br>

# Functions

| function | output | description |
| :------- | :----- | :---------- |
| [`create`](create) | [`slash.option`](#option) | Creates a slash option. |


## `create`
Creates a slash option.