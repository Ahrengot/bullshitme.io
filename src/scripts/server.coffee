request = require('request')
express = require('express')

app = express()

responses = 
	"PO": [
		"Sorry, it's not part of the minimum viable product."
		"It's out of scope for the release"
		"We can't make that a priority right now"
		"It doesn't have any business benefit"
		"You have to create a pitch for this"
		"Due to memory limitations on iOS, this isn't a realistic feature request"
		"Microsoft tried this and failed"
		"This feature would conflict with our privacy policy"
		"It's a bad idea because no-one else does this"
		"There are no more story point left in this sprint"
		"You need to take this up with the project manager instead"
		"You need to take this up with the strategist instead"
		"You need to take this up with our dev ops team instead"
		"You need to tae this up with our designers instead"
		"Fill out a new ticket and we'll add this to the end of our current queue"
		"Let's push this to v1.1.0"
		"This will take too long"
	]

app.all '*', (req, res, next) ->
	res.header 'Access-Control-Allow-Origin', '*'
	res.header 'Access-Control-Allow-Headers', 'X-Requested-With'
	res.header 'Access-Control-Allow-Headers', 'Content-Type'
	next()

app.get '/bullshit/:type', (req, res) ->
	response = responses[Math.floor(Math.random() * responses.length)]
	res.send responses.PO

	if req.type then console.log req.type

app.listen 3000

console.log "I'm going to build my own API! With blackjack! And hookers! You know what- forget the API!"
console.log responses
