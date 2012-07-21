module ApplicationHelper
  def cart_price(product, name)
    manufacturer = product.manufacturer.send(name)
    #author = content_tag("div", "By: " << book.author.name, :class => 'book_cover_author')
    #title = content_tag("div", book.title, :class => 'book_cover_title')
    content_tag("div", product.price.to_s + manufacturer, :class => "book_cover_#{name}")
  end


  def book_cover(book,size)
    book = Book.find(book.id)
    image = book.book_cover.send(size)
    author = content_tag("div", "By: " << book.author.name, :class => 'book_cover_author')
    title = content_tag("div", book.title, :class => 'book_cover_title')
    content_tag("div", title + author, :class => "book_cover_#{size}", :style => "background: url(#{image});")
  end
end
