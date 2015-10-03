class Book
  include HTTParty

  api_key = '0087b8655dd56b660197293019804232'
  base_uri 'https://api.douban.com/v2/book'
  default_params apikey: api_key
  format :json

  def self.index term
    get("/search", query: {q: term, fields: "id,title,author"})["books"]
  end

  def self.isbn term
  	add = "/isbn/#{term}"
  	get(add, query: {fields: "id,title,author"})
  end
end