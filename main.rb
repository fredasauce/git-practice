require "colorize"

def puts_git(cmd)
    puts `git #{cmd} -h`
end

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts "1: Enter git command".colorize(:magenta)
  puts "2: Exit".colorize(:magenta)
  choice = gets.to_i
  # sleep(3)
  print `clear`
  case choice
    when 1
      puts "Enter git command".colorize(:green)
      puts_git(gets.strip)
      menu
    when 2
      puts "Thanks for using our program!".colorize(:blue)
      sleep(2)
      print `clear`
      exit
    else
      puts "Invalid Input".colorize(:red)
      sleep(2)
      print `clear`
      menu
  end
end

menu