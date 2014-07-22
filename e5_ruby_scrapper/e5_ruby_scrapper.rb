require 'open-uri'
require 'nokogiri'

def ruby_scrapper (url)
  puts ""
  @value_file = url.to_s
  doc = Nokogiri::HTML(open(url))

  id_css = ['#productTitle', '#priceblock_ourprice', '#feature-bullets .a-list-item']

  id_css.each do |value_css|
    doc.css(value_css).each do |html_values|
      val_html = html_values.content
      case value_css
      when "#productTitle"
        @file_info = File.new("#{val_html.to_s.gsub(/[^a-zA-Z0-9]/, '')}.txt", "w")
        @value_file += "\n#{val_html}\n"
      when "#priceblock_ourprice"
        @value_file += "#{val_html}\n"
      when '#feature-bullets .a-list-item'
        @value_file += "#{val_html}\n"
      end
    end
  end
  @file_info.puts(@value_file)
  @file_info.close
  puts "¡Listo!"
  puts ""
end
puts "Digite aqui la url:"
ruby_scrapper(gets().chomp)