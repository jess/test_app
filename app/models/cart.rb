class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add(product)
    @items << product
  end
end
