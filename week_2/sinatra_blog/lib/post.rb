class Post
  attr_accessor(:title, :date, :text, :author, :category)

  def initialize(title, date, text, author, category)
    @title = title
    @date = date
    @text = text
    @author = author
    @category = category
  end

end