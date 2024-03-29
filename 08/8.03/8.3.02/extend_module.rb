module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  log "Defined Product class"

  def self.create_products(names)
    log "create_product is called."
  end
end

Product.create_products([])
Product.log("Hello.")
