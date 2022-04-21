# `embed`

A Discord embed.

```
struct embed [ type = {rich} ] {
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
}
```

## Functions

### `create`

```
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
  class foot {
    text = sys.presets.blank
    icon = none
    time = none
  }
  class assets {
    thumb = none
    image = none
  }
  |
  | fields = none
}
```

#### Options

| option | type | description |
| :----- | :--- | :---------- |
| type | `str` | |
