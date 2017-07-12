def grandbash(ticket,winning_ticket)
	matches = []
	
	winning_ticket.each do |winner|
		if  winner == ticket
			matches << ticket
		end
	end	

	unless matches.any?
		one_off?(ticket,winning_ticket)
	else
		matches
	end
end


def one_off?(ticket,winner)
	
	one_off_arr = []

	unless ticket.empty?
		
		ticket_arr = ticket.chars

			
		winner.each do |win|
			one_off_counter = 0
			
			winner_arr = win.chars


				unless winner_arr[0] == ticket_arr[0]
					one_off_counter += 1
				end

				unless winner_arr[1]  == ticket_arr[1]
					one_off_counter += 1
				end

				unless winner_arr[2]  == ticket_arr[2]
					one_off_counter += 1
				end

				unless winner_arr[3]  == ticket_arr[3]
					one_off_counter += 1
				end
			
			if one_off_counter <= 1
			one_off_arr << win
			end
		end
	end	

one_off_arr
end

