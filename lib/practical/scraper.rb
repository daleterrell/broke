require 'pry'
require 'nokogiri'
require 'open-uri'
class Practical::Scraper

  def self.scraper
    doc = Nokogiri::HTML(open("https://screenrant.com/horror-movies-used-practical-effects-no-cgi/"))
    puts doc
    movie = Movie.new
     movie_name = doc.search("item-title.art-body-content.article-body.article.page_content.w-content.w-website").text
    movie.name = movie_name
     
     info = []
     info = doc.search("p item-title.art-body-content.article-body.article.page_content.w-content.w-website")
    binding.pry
  end
  
  

 
 end