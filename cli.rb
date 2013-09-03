require_relative 'table'

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
print ">"
while input = gets.chomp
	print "> "
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
		print "#{name}""\n"
		print "> "
		
	elsif input == "CHANGE LIST"
		print "Name a wanted list: "
		name = gets.chomp
		my_hash[name][task]
		print "List is changed to #{name}.\n"
		

	elsif input == "INSPECT"
		print my_hash"\n""> "
		print "\n"

	elsif input == "SHOW ALL TASKS"
		all_tasks = my_hash[name].to_a
		all_tasks.collect! { |elem| elem.flatten!}
		print pretty_table(all_tasks)
		print "\n"


	elsif input == "SHOW ALL LISTS"
		my_hash.each_key { |k| print "#{k} "}
		print "\n"


		
	else
		print "Incorrect phrase. Please write again.""\n""> "
	end
end

p my_hash
