require 'pry'
class Practical::CLI
  
  def call 
    list_movies
    menu
    goodbye
  end
  
  def list_movies
    puts "The 15 best horror movies made with practical effects!!"
  end
  
  def menu
    puts "What number movie would you like more information about?"
    input = gets.strip.downcase
    while input != 0
    input = gets.strip.downcase
      movie = Practical::Scraper.scraper
      binding.pry
    puts ""
    puts "---------- Movies #{movie} - #{movie} ----------"
    puts ""
    puts ""
    puts "Would you like to see information on another movie? Enter Y or N"
    
    case 
    when "1"
      puts "dellamorte"
    when "2"
      puts "dellamore"
    when "3"
      puts "cemetary"
    when "4"
      puts "man"
    when "5"
      puts "indeed"
    when "6"
      puts "italian"
    when "7"
      puts "horror"
    when "8"
      puts "is"
    when "9"
      puts "more"
    when "10"
      puts "than"
    when "11"
      puts "Suspiria"
    when "12"
      puts "that"
    when "13"
      puts "isn't"
    when "14"
      puts "even"
    when "15"
      puts "any good.  seriously overrated."
    when "list"
      list_movies
    
   
    when "exit"
      puts "Thank you! I hope you enjoy any horror movie, and maybe it'll be a movie from this list!"
      exit
    end
  end
  
  def print_movie(movie)
    puts ""
    puts "----------- #{movie.name} -----------"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{movie.description}"
    puts ""
  end
end
end