\ extensive discord bot
\ discord.sc specimen

spec code { ver = 5.4 | syn = utinax | sty = stan }

enable sys
activate securex

locate discord { ver = 1.2 }
active discord
activate slash in discord


create discord.bot('bot') [
  | token = securex.redact('token')
  | intents = all
  | prefix = "."
]

on bot.connect {{
  sys.out("connected")
}}

create discord.command {
  define bot.test(ctx) {
    ctx.out("sup")
  }
}

create discord.command 'sup' {
  define bot.testing(ctx, par) {
    ctx.reply("sup `par`")[mention = false]
  }
}

create discord.command 'complex' {
  define bot.multi(ctx, str(par1), int(par2), bool(par3)) {
    ...
  }
}

define bot.'help'(ctx) {
  ctx.reply() [ embed = discord.embed() {
    let head.title = "Help"
    let body.col = 0x4090f1
    let body.text = "A botnstrative advanced Discord bot, showcasing all of the capabilities of discord.sc"
    let foot.text = "Requested by `ctx.user`",
    let foot.time = ctx.time
  }]
}

create discord.slash.command 'commands' [ desc = "view a list of available commands" ] {
  define bot.view(ctx) {
    ctx.respond() [ embed = discord.embed() {
      let head.title = "Commands"
      let body.col = 0xff0090
      let body.text = """
        ...
      """
      let foot.text = "Showing `body.text.len[line]` commands"
    }]
  }
}

create discord.slash.command [ desc = "get profile picture of a user in the server" ] {
  define bot.pfp(ctx, discord.member(user)) {
    ctx.respond() [ attach = sys.file(user.avatar.url) | ephemeral = true ]
  }
}

create discord.slash.command [ desc = "" ] {
  define bot.func(ctx, discord.option(choice)[...]) {
    ...
  }
}

on discord.message.send(ctx) {{
  sys.log("`ctx.message.sender` said `ctx.message.content` in `ctx.channel.name`")
  await bot.process(ctx)
}}

on bot.command.call(ctx) {{
  sys.log("`ctx.user` used `ctx.command.name`")
}}

on bot.interaction.call(ctx) {{
  sys.log(ctx.data)
  
  if ctx.valid {
    sys.log("`ctx.user` used `ctx.command.name`")
    await bot.slash.process(ctx)
  }
}}


bot.start()
