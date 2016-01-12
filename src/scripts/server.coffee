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