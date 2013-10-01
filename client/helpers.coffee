pages = [
	"new_message"
	"vote"
	"feedback"
	"home"
]

window.Helpers = {}

Helpers.registerCurrentPageHelper = (page) ->
	Handlebars.registerHelper "is_#{page}", ->
		page == Session.get "current_page"

Helpers.registerCurrentPageHelper page for page in pages