# `user`

A Discord user.

```coffee
struct 'user' [channel] {
  intr discord.id 'id'
  intr str 'shard'

  intr sys.file 'avatar'
  class 'avatar' {
    intr sys.url 'url'
  }

  synth func 'mention'
}
```

<br>

# Properties

<br>

# Functions