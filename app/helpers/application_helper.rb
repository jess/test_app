module ApplicationHelper
  def cart_price(product)
    manufacturer = content_tag("strong", product.manufacturer.name)
    raw content_tag(:div, raw(manufacturer) << number_to_currency(product.price), :style => "text-align: right;")
  end
end
