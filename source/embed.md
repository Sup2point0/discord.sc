# `embed`

A Discord embed.

```coffee
struct 'embed' {
  intr int 'len'
  pool 'type' = {rich, link, video}
  stat dict 'dict'
  
  class 'head' {
    str 'text' = sys.inv.blank
    sys.url 'link' = none
    class 'author' {
      str 'text' = none
      sys.url 'link' = none
      sys.url 'icon' = none
    }
  }
  class 'body' {
    str 'text' = sys.inv.blank
    discord.col 'col' = none
  }
  class 'foot' {
    str 'text' = sys.inv.blank
    sys.url 'icon' = none
    datix.time, datix.date, datix.datetime 'time' = none
  }
  class 'assets' {
    sys.url 'thumb' = none
    sys.url 'image' = none
  }

  (field)s 'fields' = none
  
  evo exp func 'add'
  evo exp func 'insert'
  evo exp func 'del'
  evo exp func 'clear'

  substruct 'field'
}
```

<br>

# Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `len` | `length` | `stat[int]` | The total character count of the embed, including titles and footers. Useful for checking if an embed is within the 6000 character count limit. |
| `dict` | `info`, `data` | `stat[dict]` | A dictionary representation of the embed. Useful for convenient transfer. |
| `type` | | `slot` | The type of the embed. |
| [`head`](#head) | | `class` | The header of the embed. |
| [`body`](#body) | `main` | `class` | The main body of the embed, excluding fields. |
| [`foot`](#foot) | | `class` | The footer of the embed. |
| [`assets`](#assets) | `media` | `class` | Any media within the embed. |
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

<br>

# Functions

| function | description |
| :------- | :---------- |
| [`create`](#create) | Creates an embed. |
| [`clearFields`](#clearFields) | Clears fields from the embed. |


## `create`

Creates an embed.

```coffee
func create(ctx) [
  | type = {rich, link, video}
  | dict = auto
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

### Inputs

TBA.

### Examples

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


## `clearFields`

Clears fields from the embed.

```coffee
func embed.clearFields(
  index, slot 'index' = {all}
)
```

### Inputs

| input | aliases | type | description |
| :---- | :------ | :--- | :---------- |
| `index` | `fields` | `int`, `span`, `slot` | The specific index or indexes to clear. |

### Example

```coffee
create discord.embed('content') [title = "Example Embed" | fields = (
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

---

# `embed.field`

```coffee
struct 'field' in embed {
  stat int 'index'

  str 'title' = sys.inv.blank
  str 'text' = sys.inv.blank
  bool 'inline' = false
}
```

<br>

# Properties

| property | aliases | type | description |
| :------- | :------ | :--- | :---------- |
| `title` | `name` | `str` | The title text. |
| `text` | `value` | `str` | The main text. |
| `inline` | | `bool` | Whether or not the field is inline. If `true`, the field before it must also be inline for it have effect. |

<br>

# Functions

## `create`

```coffee
func create(ctx) [
  | title = sys.inv.blank
  | text = sys.inv.blank
  | inline = false
]
```

### Inputs

| input | aliases | type | description |
| :---- | :------ | :--- | :---------- |
| `title` | `name` | `str` | The title text. |
| `text` | `value` | `str` | The main text. |
| `inline` | | `bool` | Whether or not the field is inline. If `true`, the field before it must also be inline for it have effect. |