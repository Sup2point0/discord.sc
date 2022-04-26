# `embed`

A Discord embed.

```coffee
struct 'embed' {
  stat int 'len'
  pool 'type' = {rich, link, video}
  stat dict 'dict'
  
  class 'head' {
    str head.var('text', 'title') = sys.inv.blank
    sys.url head.var('link', 'url') = none
    class 'author', 'user' {
      str class.var('text', 'name') = none
      sys.url class.var('link', 'url') = none
      sys.url class.'icon' = none
    }
  }
  class 'body' {
    str body.'text' = sys.inv.blank
    discord.col body.var('col', 'colour', 'color') = none
  }
  class 'foot' {
    str foot.'text' = sys.inv.blank
    sys.url foot.'icon' = none
    datix.time, datix.date, datix.datetime foot.var('time', 'timestamp') = none
  }
  class 'assets', 'media' {
    sys.url class.var('thumb', 'thumbnail', 'icon') = none
    sys.url class.'image' = none
  }

  prop embed.'fields' [embed.field, list[embed.field]] = none
  
  evo exp func 'add'
  evo exp func 'insert'
  evo exp func 'del'
  evo exp func 'clear'

  substruct 'field'
}
```

## Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `len` | `length` | `stat[int]` | The total character count of the embed, including titles and footers. Useful for checking if an embed is within the 6000 character count limit. |
| `dict` | `info`, `data` | `stat[dict]` | A dictionary representation of the embed. Useful for convenient transfer. |
| `type` | | `slot` | The type of the embed. |
| `fields` | | `list[embed.field]` | The fields of the embed. |

### `head`
| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `head.text` | `title` | `str` | The title text. |
| `head.link` | `url` | `sys.url` | The link of the title. |
| `head.author.text` | `name` | `str` | The displayed author. |
| `head.author.icon` | | `sys.url` | The displayed author icon. |

### `body`
| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `body.text` | | `str` | The main text. |
| `body.col` | `colour`, `color`| `discord.col`  | The accent colour. |

### `foot`
| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `foot.text` | | `str` | The footer text. |
| `foot.icon` | | `sys.url` | The footer icon. |
| `foot.time` | `timestamp`| `datix.time`, `datix.date`, `datix.datetime`  | The displayed timestamp. |

### `assets`
| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `assets.thumb` | `thumbnail`, `icon`| `sys.url`  | The thumbnail. |
| `assets.image` | | `sys.url` | The image. |

## Functions

### `create`

Creates an embed.

```coffee
func create(ctx) [
  | type = "rich"
  | dict = preset
  |
  | class head {
    text = sys.inv.blank
    link = none
    class author {
      text = none
      link = none
      icon = none
    }
  }
  | class body {
    text = sys.inv.blank
    col = none
  }
  | class foot {
    text = sys.inv.blank
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

#### Inputs

TBA.

#### Examples

```coffee
create discord.embed('content') [
  | head.title = "Example Embed"
  | body.text = "testing testing"
  | foot.text = "sup"
]
```

Specifying the options with `let` afterwards allows you to adjust values based on previous options.

```coffee
create discord.embed('content') {
  let head.title = "Example Embed"
  let body.text = "testing *`head.title`* testing"
  let foot.text = case(body.text)[lower]
}
```

### `clearFields`

Clear fields from the embed.

```coffee
func embed.clearFields(
  par('index')[index, slot] = {all}
)
```

#### Inputs

| input | aliases | type | description |
| :---- | :------ | :--- | :---------- |
| `index` | `fields` | `int`, `span`, `slot` | The specific index or indexes to clear. |

#### Example

```coffee
create discord.embed('content') [... | fields = (
  embed.field()[title = "first" | text = "sup"],
  embed.field()[title = "second" | text = "sup"],
  embed.field()[title = "third" | text = "sup"],
  embed.field()[title = "fourth" | text = "sup"],
  embed.field()[title = "fifth" | text = "sup"],
)]

content.clearFields(1)
content.clearFields(2~3)
content.clearFields()
```


# `embed.field`

```coffee
struct 'field' in embed {
  stat int 'index'

  str 'title' = sys.inv.blank
  str 'text' = sys.inv.blank
  bool 'inline' = false
}
```

## Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `title` | `name` `str` | | The title text. |
| `text` | `value` `str` | | The main text. |
| `inline` | | `bool` | Whether or not the field is inline. If `true`, the field before it must also be inline for it have effect. |

## Functions

### `create`

```coffee
func create(ctx) [
  | title = sys.inv.blank
  | text = sys.inv.blank
  | inline = false
]
```

#### Inputs

| input | aliases | type | description |
| :---- | :------ | :--- | :---------- |
| `title` | `name` | `str` | The title text. |
| `text` | `value` | `str` | The main text. |
| `inline` | | `bool` | Whether or not the field is inline. If `true`, the field before it must also be inline for it have effect. |