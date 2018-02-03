require_relative 'cart_item.rb'

# # Shopping Cart Class
class Shopping_Cart

  # # Instance variables
  def initialize
    @cart_list = []
  end

  # # Instance methods
  def cart_list
    @cart_list
  end

  def add_product(product, base_price)
    product = Cart_Item.new_product(product, base_price)
    cart_list << product
  end

  def remove_product(product)
    cart_list.delete_if do |product_name|
      product == product_name.name
    end
  end

  def taxless_total
    total = 0
    cart_list.each do |product|
      total += product.base_price
    end
    puts "Your total before tax is #{total}."
  end

  def taxed_total
    total = 0
    cart_list.each do |product|
      taxed_price = product.apply_tax
      total += taxed_price
    end
    puts "Your total after tax is #{total}."
  end
end

my_cart = Shopping_Cart.new

my_cart.add_product("banana", 2.94)
my_cart.add_product("doritos", 4.22)
my_cart.add_product("green onions", 2.14)
my_cart.add_product("oranges", 3.54)

puts my_cart.cart_list.inspect
my_cart.taxless_total
my_cart.taxed_total
