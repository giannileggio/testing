# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready () ->
	$(document).on 'click', '.add-to-list', (e) ->	
		e.preventDefault()
		link = this
		$.post '/add_to_list', { book: $(this).data('book') }, (data)->
			if data.success
				$(link).remove()