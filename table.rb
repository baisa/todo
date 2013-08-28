	def pretty_table(array)

		new_array = array.collect do|elem|
			elem.collect! {|el| el.to_s}
			elem.max_by {|el| el.length}
		end
		m = new_array.max_by {|elem| elem.length}
		z = array[0].size
		w = m.size * z + z + 2



		string = ""
		array.each do |sub_array|
			string << " "
			string << ("+" + "-" * m.size + "-") * z + "+"
			string << "\n"
			sub_array.each do |elem|
				string << " |" + elem.ljust(m.size)
			end
			string << " |"
			string << "\n"

		end
		string << " "
		string << ("+" + "-" * m.size + "-") * z + "+"
		string << "\n"

	end
