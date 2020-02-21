class SearchCompiler
  def initialize(title)
    @book_data = BookApi.find_book(title)
  end

  def title
    require "pry"; binding.pry
    @book_data
  end

  def author
    @book_data
  end

  def genre
    @book_data
  end

  def find_reviews
    data = NytBookApi.find_reviews(@book_data['docs'][0]['isbn'][1])

  end
end
