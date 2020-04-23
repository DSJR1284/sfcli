require"pry"
# require "open-uri"

class Scraper 
    attr_reader :url, :players

    def initialize(players)
        @players = players
        @url = "https://capcomprotour.com/standings/#{players}".sub(" ","--")
    end 

    def parse_url(url)
        unparsed_page = HTTParty.get(url)
        Nokogiri::HTML(unparsed_page)
    end 

    def scrape 
        parsed_page = parse_url(@url)
    end 
    binding.pry 
end 

# base_url = "https://capcomprotour.com/"
# standings_url = base_url + "standings"
# players_url = base_url + "players"

# page = open(standings_url)

# puts page.class
# puts page.content_type
# puts page.read
# puts page.read.class

# html_text = page.read



