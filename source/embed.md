# `embed`

A Discord embed.

```swift
struct 'embed' {
  prop 'len'
  prop 'dict'
  
  opt type = {rich}
  
  class head {
    str head.var(text, title) = sys.presets.blank
    sys.url head.var(link, url) = none
    class author, user {
      str class.var(text, name) = none
      sys.url class.var(link, url) = none
      sys.url class.icon = none
    }
  }
  class body {
    str body.text = sys.presets.blank
    discord.col body.var(col, colour, color) = none
  }
  class foot {
    str foot.text = sys.presets.blank
    sys.url foot.icon = none
    datix.time, datix.date, datix.datetime foot.var(time, timestamp) = none
  }
  class assets, media {
    sys.url class.var(thumb, thumbnail, icon) = none
    sys.url class.image = none
  }

  list embed.fields [embed.field] = none
  
  synth func 'add'
  synth func 'insert'
  synth func 'del'
  synth func 'clear'
}
```

## Properties

| property | type | aliases | description |
| :------- | :--- | :------ | :---------- |
| `len` | `int` | `length` | The total character count of the embed, including titles and footers. Useful for checking if an embed is within the 6000 character count limit. |
| `dict` | `dict` | `info`, `data` | A dictionary representation of the embed. Useful for convenient transfer. |
| `type` | `str` | | The type of the embed. |
| `head.text` | `str` | `title` | |
| `head.link` | `sys.url` | `url` | |
| `head.author.text` | `str` | `name` | |
| `head.author.icon` | `sys.url` | | |
| `body.text` | `str` | | |
| `body.col` | `discord.col` | `colour`, `color` | |
| `foot.text` | `str` | | |
| `foot.icon` | `sys.url` | | |
| `foot.time` | `datix.time`, `datix.date`, `datix.datetime` | `timestamp` | |
| `assets.thumb` | `sys.url` | `thumbnail`, `icon` | |
| `assets.image` | `sys.url` | | |
| `fields` | `list[embed.field]` | | |

## Functions

### `create`

```swift
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
}
```

#### Options

See [properties](#properties)
