class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books =[]
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def publication_time_frame_for(author)
    time_frame = {}
    author.books.each do |book|
      book.publication_year
    end
  end
end
