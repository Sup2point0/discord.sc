# `view`

A Discord view.

```coffee
struct 'view' {
  numc 'timeout' = none
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
| [`create`](create) | [`view`](#view) | Creates a view. |


## `create`
Creates a view.

```coffee
func[evo] create(ctx) {

}
```

<br>
---
<br>

# `button`

A button within a view.

```coffee
struct view.'button' {
  discord.id 'id' = none

  str 'text' = sys.presets.blank
  discord.emoji 'icon' = none
  button.style 'style' = blurple
  sys.url 'link' = none

  lurk 'press'
  lurk 'timeout'
  lurk 'stop'

  intr discord.view 'view'
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
| [`create`](create) | [`view.button`](#button) | Creates a button. |


## `create`
Creates a button.

```coffee
func[evo] create(ctx) {

}
```