def group_size_calc
  students = %w(Iwona Craig GraemeK Kathryn Kieran Peter Ere Chae Zsolt Simon Syed Neil GraemeS Keith Nevin)

  puts `clear`
  puts "Bunny Up (what?)"
  puts "How many people do you wish to assign to a group?"
  # get user input
  group_size = gets.chomp.to_i
  # store number of groups
  number = students.size / group_size
  # calculate remaining students
  remainder = students.size % group_size
  # store random remaining students
  remaining_students = students.sample(remainder)

  remaining_students.each { |student| students.delete student}

  groups = []
  number.times do
    new_group = students.sample(group_size)
    groups << new_group
    new_group.each { |student| students.delete student}
  end

  remaining_students.each_with_index do |s, i|
    groups[i] << s
  end

  groups.each_with_index do |group, index|
    puts "Group #{index + 1}: "
    group.each { |name| print name + " "}
    puts
  end

end

response = group_size_calc


