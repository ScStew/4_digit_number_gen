def grandbash(ticket,winner)
	matches = []
	winner.each do |winner|
		if  winner == ticket
		matches << ticket
		end
	end
	matches
end
