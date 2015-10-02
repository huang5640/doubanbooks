class Book
  include HTTParty

  apiKey = '0087b8655dd56b660197293019804232'
  base_uri 'http://api.douban.com/'
  default_params apikey: apiKey, alt: 'json'#, fields: "title, author, link",
  format :json

  def self.for term
    get("book/subject/isbn/#{term}", {})
  end
end
