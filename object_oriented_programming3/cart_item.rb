# # Cart Item Class
class Cart_Item
  # # Class Variables
  @@tax_rate = 1.14

  # # Instance Variables
  def initialize(name, base_price)
    @name = name
    @base_price = base_price
  end

  def name
    @name
  end

  def base_price
    @base_price
  end

  def apply_tax
    (base_price * Cart_Item.tax_rate).round(2)
  end

  # # Class Methods
  def self.tax_rate
    @@tax_rate
  end

  def self.new_product(product, base_price)
    product = Cart_Item.new(product, base_price)
    return product
    product = nil
  end
end
