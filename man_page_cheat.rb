def display_man_page(command)
  puts `man #{command}`
end


while true
  puts "1) Command Line"
  puts "2) Search"
  puts "3) Exit"

  input = $stdin.gets.chomp.to_i

  case input
  when 1
    while true
      puts "1) cd"
      puts "2) pwd"
      puts "3) ls"
      puts "4) mkdir"
      puts "5) touch"
      puts "6) Main Menu"

      input1 = $stdin.gets.chomp.to_i

      case input1
      when 1
        display_man_page("cd")
      when 2
        display_man_page("pwd")
      when 3
        display_man_page("ls")
      when 4
        display_man_page("mkdir")
      when 5
        display_man_page("touch")
      when 6
        break
      else
        puts "Invalid input"
      end
    end

  when 2
    puts "Enter command to search for"

    display_man_page($stdin.gets.chomp)
  when 3
    exit 0
  else
    puts "Invalid input."
  end
end
