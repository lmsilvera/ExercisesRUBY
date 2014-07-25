class Skp
  def ruby_scrapper (url)
    @value_file = url
    doc = Nokogiri::HTML(open(url))
    id_css = ['#btAsinTitle', '#productTitle', '#priceblock_ourprice','#current-price', '#feature-bullets .a-list-item', '#productDescription p', 'img#landingImage', 'img#prodImage']
    id_css.each do |value_css|
      doc.css(value_css).each do |html_values|
        case value_css
        when "#productTitle" , '#btAsinTitle'
          @value_file += "<br>#{html_values.content}<br>"
        when 'img#landingImage', 'img#proImage'
          @value_file += "<p>Imagen</p><img src='#{html_values['src']}'><br>"
        else
          @value_file += "#{html_values.content}<br>"
        end
      end
    end
    @value_file += "<a href='/scrapper'>Volver</a>"
  end
end