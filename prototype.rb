print "> "

my_hash = {}

puts 'Preload?'
if gets.chomp == 'y'

	my_hash = {"CIUCIK"=>{"Walk"=>["Slawosz", "Today", "No"], 
		  "Play"=>["Slawosz", "Tonight", "No"]},
		"Basia"=>
		  {"Massage"=>["Slawosz", "Today", "No!"], "Give wine"=>["Slawosz", "Tonight", "No"]}}
    name = 'CIUCIK'
end

while input = gets.chomp
	break if input == "END"
	if input == "ADD LIST"
		print "Name of the list: "
		name = gets.chomp
		my_hash[name] = {}
		print "List #{name} is created.\n"

	elsif input == "ADD TASK"
		print "Please name the task""\n""> "
		task = gets.chomp
		my_hash[name][task]
		print "Please name a responsible person""\n"">"
		person = gets.chomp
		print "Give a deadline""\n"">"
		deadline = gets.chomp
		print "Check if done""\n"">"
		status = gets.chomp
		my_hash[name][task] = [person, deadline, status]

	elsif input == "CURRENT LIST"
		print "#{name}"

	elsif input == "INSPECT"
		print my_hash
		print "\n"

	elsif input == "CHANGE LIST"
		print "Name a wanted list: "
		wanted_list = gets.chomp
		print my_hash[wanted_list]
		
	else
		print "Incorrect phrase. Please write again.""\n""> "
	end
end

p my_hash
