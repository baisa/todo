print "> "

my_hash = {}

while input = gets.chomp
	break if input == "END"
	if input == "ADD LIST"
		print "Name of the list: "
		name = gets.chomp
		my_hash[name] = {}
		print "List #{name} is created."

	elsif input == "ADD TASK"
		print "Please name the task""\n""> "
		task = gets.chomp
		my_hash[name][task]
	elsif input == "WHO"
		print "Please name a responsible person""\n"">"
		person = gets.chomp
	elsif input == "DEADLINE"
		print "Give a deadline""\n"">"
		deadline = gets.chomp
	elsif input == "STATUS"
		print "Check if done""\n"">"
		status = gets.chomp
		my_hash[name][task] = [person, deadline, status]

	else
		print "Incorrect phrase. Please write again.""\n""> "
	end
end



p my_hash
