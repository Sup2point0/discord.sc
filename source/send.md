# Send Functions

## `send`

```
func discord.channel.send(str 'content' = none) [
  | 'react' = none
  | 'stickers' = none
  | 'attach' = none
  | 'embed' = none
  | 'embeds' = none
  | 'view' = none
  | 'views' = none
  | 'delete' = 0.0
]
```

### Inputs

| input | type | description |
| :---- | :--- | :---------- |
| `react` | `discord.emoji`, `list(discord.emoji)` | |
| `stickers` | `discord.sticker`, `list[discord.sticker]` | |
| `attach` | `discord.attachment`, `list(discord.attachment)` | |
| `embed` | `discord.embed` | |
| `embeds` | `discord.embed`, `list(discord.embed)` | |
| `view` | `discord.view` | |
| `views` | `discord.view`, `list(discord.view)` | |
| `delete` | `float`, `datix.time`, `datix.date`, `datix.datetime` | |

## `reply`

```
func discord.message.reply(str 'content' = none) [
  | bool 'mention' = false
  | 'react' = none
  | 'stickers' = none
  | 'attach' = none
  | 'embed' = none
  | 'embeds' = none
  | 'view' = none
  | 'views' = none
  | 'delete' = 0.0
]
```
