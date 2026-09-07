Modal(
	custom_id = "form1",
	title = t.question.title(),
	components = [
		Label(
			label = t.question.label(),
			description = t.question.description(),
			component = TextInput(
				custom_id = "...",
				style = TextInputStyle.Paragraph,
			),
		),
		Label(
			label = "",
			description = "",
			component = CheckboxGroup(
				custom_id = "...",
				options = [

				],
			),
		),
	],
)
