agent = Mechanize.new
url = "http://uzhgorod.net.ua"

page = agent.get(url)
articles = agent.page.search('div.block ul.article-list li a')[0...3]

articles.each do |article|
 	puts article.text
end
