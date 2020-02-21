class SearchCompiler
  def initialize(title)
    @book_data = BookApi.find_book(title)
  end

  def title
    @book_data['docs'][0]['title']
  end

  def author
    @book_data['docs'][0]['author_name'][0]
  end

  def genre
    genre = @book_data['docs'][0]['subject']
    genre == nil ? "No Genre" : genre
  end

  def find_reviews
    data = NytBookApi.find_reviews(@book_data['docs'][0]['isbn'][1])
    data['results']
  end
end
