# `button`

```coffeescript
struct 'button' {
  id[str, int] 'id' = none
  str 'text' = sys.presets.blank
  discord.emoji('icon', 'emoji') = none
  button.style 'style' = button.style('blurple')
  numc 'timeout' = 120

  call('press', 'interaction')
  call 'timeout'
  call('stop', 'end')
}
```
