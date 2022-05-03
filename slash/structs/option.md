# `option`

A slash command option.

```coffee
struct 'option' {
  str 'name' = default
  str description = none
  type, pool, dict 'options' = none
  opt 'default' = none
  bool autocomplete = false
  bool required = true

  int, float 'min' = none
  int, float 'max' = none
}
```

<br>

# Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `name` | | `str` | The displayed name of the option. |
| `description` | `desc` | `str` | The description of the option. |
| `options` | `choices` | `type`, `pool`, `dict` |  |
| `default` | | `opt` |  |
| `autocomplete` | `autofill`, `auto` | `bool` |  |
| `required` | `req` | `bool` |  |
| `min` | | `int`, `float` |  |
| `max` | | `int`, `float` |  |

<br>

# Functions

| function | output | description |
| :------- | :----- | :---------- |
| [`create`](create) | [`slash.option`](#option) | Creates a slash option. |


## `create`
Creates a slash option.

```coffee
func[evo] create(ctx) {

}
```