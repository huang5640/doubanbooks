class Book
  include HTTParty

  base_uri 'https://api.douban.com/v2/book/'
  default_params fields: "id, title, author", q: "isbn"
  format :json

  def self.for term
    get("", query: {query: term})["element"]
  end
end
