Template.new_message.events =
	"click a[name=post]": ->
		content = $('textarea[name=message]').val().split("\n").join("<br/>")
		Messages.insert {content: content, happy: 0, medium_happy: 0, indiferent: 0, medium_sad: 0, sad: 0, date: new Date}