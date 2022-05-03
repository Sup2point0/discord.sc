# `view`

A Discord view.

```coffee
struct 'view' {
  numc 'timeout' = none
}
```

<br>

# Properties

<br>

# Functions

<br>
---
<br>

# `button`

A button within a view.

```coffee
struct 'button' in view {
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

<br>

# Functions