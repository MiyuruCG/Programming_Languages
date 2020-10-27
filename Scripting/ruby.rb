#!/usr/bin/ruby

# chmod +x bin/hello_world.rb  <- this command in the terminal to give permision to exicute this file
# then ./ruby.rb will work,
#or else type :: ruby ruby.rb

# puts 'Hello world'

# # my_script.rb
# def say_input
#     puts "What should we say?"
#     input = gets.strip
#     puts "Okay, let's say: #{input}!"
# end
# say_input 

# puts Dir.pwd

# puts Dir.pwd
# puts Dir.getwd
# puts Dir.children('test')
# puts Dir.glob("**.txt")

#list specific files
# puts Dir.glob("*")
# puts Dir.glob("*r*")
# puts Dir.glob("*.rb")

#list all files
puts Dir.glob("**/**/*.txt")
puts Dir.glob("**/**/")
