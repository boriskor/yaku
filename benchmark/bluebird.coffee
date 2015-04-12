bluebird = require 'bluebird'

count = 10 ** 5
asyncTask = ->
	new bluebird (resolve) ->
		setTimeout ->
			resolve()
		, 1

console.time 'bluebird'
process.on 'exit', ->
	console.timeEnd 'bluebird'

while count--
	asyncTask()