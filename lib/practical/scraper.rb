class Practical::Scraper

  def get_page
    html = open("https://www.rottentomatoes.com/search/?search=horror")
    doc = Nokogiri::HTML(html)
  end

  def scrape_movies_index
     self.get_page.css("div#t1-50 li")
  end

  def make_movies
    scrape_movies_index.each do |r|
      Practical::Movies.new_from_index_page(r)
    end
  end
end