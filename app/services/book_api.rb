class BookApi

  def self.find_book(title)
    response = Faraday.get("http://openlibrary.org/search.json?title=#{title}")
    JSON.parse(response.body, sybomlize_names: true)
  end

end
