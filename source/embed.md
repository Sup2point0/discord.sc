# `embed`

A Discord embed.

```coffee
struct 'embed' {
  prop 'len'
  prop 'dict'
  
  opt 'type' = {rich}
  
  class 'head' {
    str head.var('text', 'title') = sys.presets.blank
    sys.url head.var('link', 'url') = none
    class 'author', 'user' {
      str class.var('text', 'name') = none
      sys.url class.var('link', 'url') = none
      sys.url class.'icon' = none
    }
  }
  class 'body' {
    str body.'text' = sys.presets.blank
    discord.col body.var('col', 'colour', 'color') = none
  }
  class 'foot' {
    str foot.'text' = sys.presets.blank
    sys.url foot.'icon' = none
    datix.time, datix.date, datix.datetime foot.var('time', 'timestamp') = none
  }
  class 'assets', 'media' {
    sys.url class.var('thumb', 'thumbnail', 'icon') = none
    sys.url class.'image' = none
  }

  list embed.'fields' [embed.field] = none
  
  synth lurk 'add'
  synth lurk 'insert'
  synth lurk 'del'
  synth lurk 'clear'

  substruct 'field'
}
```

## Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `len` | `length` | `int` | The total character count of the embed, including titles and footers. Useful for checking if an embed is within the 6000 character count limit. |
| `dict` | `info`, `data` | `dict` | A dictionary representation of the embed. Useful for convenient transfer. |
| `type` | | `str` | The type of the embed. |
| `fields` | | `list[embed.field]` | A list of fields to add to the embed. |

### `head`

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `head.text` | `title` | `str` | The title text. |
| `head.link` | `url` | `sys.url` | The link of the title. |
| `head.author.text` | `name` | `str` | The displayed author. |
| `head.author.icon` | | `sys.url` | The displayed author icon. |

### `body`

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |
| `body.text` | `str` | | The main text. |
| `body.col` | `discord.col` | `colour`, `color` | The accent colour. |

### `foot`

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |
| `foot.text` | `str` | | The footer text. |
| `foot.icon` | `sys.url` | | The footer icon. |
| `foot.time` | `datix.time`, `datix.date`, `datix.datetime` | `timestamp` | The displayed timestamp. |

### `assets`

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |
| `assets.thumb` | `sys.url` | `thumbnail`, `icon` | The thumbnail. |
| `assets.image` | `sys.url` | | The image. |

## Functions

### `create`

```coffee
func create(ctx) [
  | type = "rich"
  |
  | class head {
    text = sys.presets.blank
    link = none
    class author {
      text = none
      link = none
      icon = none
    }
  }
  | class body {
    text = sys.presets.blank
    col = none
  }
  | class foot {
    text = sys.presets.blank
    icon = none
    time = none
  }
  | class assets {
    thumb = none
    image = none
  }
  |
  | fields = none
]
```

#### Options

TBA.


# `embed.field`

```coffee
struct 'field' in embed {
  str 'title' = sys.presets.blank
  str 'text' = sys.presets.blank
  bool 'inline' = false
}
```

## Properties

| property | aliases type | | description |
| :------- | :------ :--- | | :---------- |
| `title` | `name` `str` | | The title text. |
| `text` | `value` `str` | | The main text. |
| `inline` | | `bool` | Whether or not the field is inline. If `true`, the field before it must also be inline for it have effect. |

## Functions

### `create`

```coffee
func create(ctx) [
  | title = sys.presets.blank
  | text = sys.presets.blank
  | inline = false
]
```

#### Inputs

| input | aliases | type | description |
| :---- | :--- | :------ | :---------- |
| `title` | `name` | `str` | The title text. |
| `text` | `value` | `str` | The main text. |
| `inline` | | `bool` | Whether or not the field is inline. If `true`, the field before it must also be inline for it have effect. |