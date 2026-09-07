// the prelude brings Discord.* (discord.libsonnet) into scope

Message(
 // omit `content` and `embeds` to automatically set the `IS_COMPONENTS_V2` flag
	components = [
 		TextDisplay(
 			content = t.hello(),
 		),
 		Container(
   			accent_color = Colors.Blurple,
 			components = [
 				Section(
     				accessory = Button(
         				custom_id = "btn1",
        				style = ButtonStyle.Primary,
        				label = t.click_me(),
         			),
 					components = [
 						TextDisplay(
 							content = t.hello(name = ctx.user.username),
 						),
 					],
 				)
 			],
 		)
	]
)
