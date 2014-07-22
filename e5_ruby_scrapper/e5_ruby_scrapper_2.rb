require 'open-uri'
require 'nokogiri'
load 'scrapper.rb'

def ruby_scrapper_a (url)
  doc = Nokogiri::HTML(open(url))
  id_css = ['div.s9hl a.title.ntTitle.noLinkDecoration']
  puts ""
  id_css.each do |value_css|
    doc.css(value_css).each do |html_values|
      ruby_scrapper("http://www.amazon.com#{html_values['href'].to_s}", true)
    end    
  end
  puts ""
end

ruby_scrapper_a("http://www.amazon.com")
