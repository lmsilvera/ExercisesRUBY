def ruby_scrapper (url, p_file)
  @value_file = url
  doc = Nokogiri::HTML(open(url))
  id_css = ['#btAsinTitle', '#productTitle', '#priceblock_ourprice','#current-price', '#feature-bullets .a-list-item', '#productDescription p', 'img#landingImage', 'img#prodImage']
  id_css.each do |value_css|
    doc.css(value_css).each do |html_values|
      case value_css
      when "#productTitle" , '#btAsinTitle'
        @file_info = File.new("products/#{p_file ? html_values.content.to_s.gsub(/[^a-zA-Z0-9]/, '') : "amazon"}.txt", "w")
        @value_file += "\n#{html_values.content}\n"
      when 'img#landingImage', 'img#proImage'
        @value_file += "URL IMAGEN: #{html_values['src']}\n"
      else
        @value_file += "#{html_values.content}\n"
      end
    end
  end
  @file_info.puts("#{@value_file}")
  @file_info.close
end

