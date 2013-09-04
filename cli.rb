require_relative 'table'
def all_tasks_array(task)
	all_tasks = task.to_a
	all_tasks.collect! { |elem| elem.flatten!}
end

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
		print my_hash
		print "\n"

	elsif input == "SHOW ALL TASKS"
		
		print pretty_table(all_tasks_array(my_hash[name]))
		print "\n"
	
	elsif input == "SHOW TASKS FOR"
		print "Please enter a name of inspected person\n"
		inspected_person = gets.chomp
		persons_tasks = []
		all_tasks_array(my_hash[name]).each do |elem|
			elem.each do |x|
				if x == inspected_person
					persons_tasks << elem[0]
				end
			end
		end
		print persons_tasks

	elsif input == "SHOW ALL LISTS"
		my_hash.each_key { |k| print "#{k} "}
		print "\n"
		
	else
		print "Incorrect phrase. Please write again.""\n""> "
	end
end

p my_hash
