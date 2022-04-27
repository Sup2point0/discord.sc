# `user`

A Discord user.

```coffee
struct 'user' {
  intr discord.id 'id'
  intr str 'shard'

  intr sys.file 'avatar'
  class 'avatar' {
    intr sys.url 'url'
  }
}
```