class Book

  attr_reader :author_first_name, :author_last_name, :title, :publication_date

  def initialize(book_attributes)
    @author_first_name = book_attributes[:author_first_name]
    @author_last_name = book_attributes[:author_last_name]
    @title = book_attributes[:title]
    @publication_date = book_attributes[:publication_date]
  end

  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    @publication_date[-4..-1]
  end
end
