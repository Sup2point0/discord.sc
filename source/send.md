## `send`

```coffee
func discord.channel.send(str 'content' = none) [
  | react = none
  | stickers = none
  | attach = none
  | embed = none
  | embeds = none
  | view = none
  | views = none
  | delete = 0.0
]
```

### Inputs

| input | type | description |
| :---- | :--- | :---------- |
| `react` | [`discord.(emoji)s`](emoji.md) | Reaction(s) to add. |
| `sticker` | [`discord.(sticker)s`](sticker.md) | Sticker(s) to add. |
| `attach` | [`discord.(attachment)s`](attachment.md) | Attachment(s) to upload. |
| `embed` | [`discord.(embed)s`](embed.md) | Embed(s) to add. |
| `view` | [`discord.(view)s`](view.md) | View(s) to add. |
| `delete` | `float`, `datix.time`, `datix.date`, `datix.datetime` | The duration after which to delete the message. |

### Example

```coffee
discord.channel(...).send("sup") [
  | attach = sys.file('sup.svg')
  | embed = discord.embed() [...] {...}
  | view = discord.view() [...] {...}
]
```

## `reply`

```coffee
func discord.message.reply(str 'content' = none) [
  | mention = false
  | react = none
  | stickers = none
  | attach = none
  | embed = none
  | embeds = none
  | view = none
  | views = none
  | delete = 0.0
]
```
