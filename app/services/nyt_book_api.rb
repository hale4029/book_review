class NytBookApi
  def self.find_reviews(isbn)
    response = Faraday.get("https://api.nytimes.com/svc/books/v3/reviews.json?isbn=#{isbn}&api-key=SvDFDSuyUzF6kZNGLIV2bZAZ2BnFwtWg")
    #response = Faraday.get("https://api.nytimes.com/svc/books/v3/reviews.json?isbn=#{isbn}&api-key=#{ENV['NYT_KEY']}")
    JSON.parse(response.body, sybomlize_names: true)
  end
end
