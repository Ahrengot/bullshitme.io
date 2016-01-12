window.bullshit = do ($) ->
	
	# Custom functions here
	getBullshit: ->
		$('button').click (e) ->
			$.ajax(
				#url: 'http://54.201.101.76:3000/issues/tasks'
				url: 'http://localhost:3000/bullshit' # For local development
			).done (data) ->
				$('.result').html data

# Callstack, doc.ready
$(document).ready ->
	bullshit.getBullshit()