# ./amazon_order.rb
require './lib/deliverable'
class AmazonOrder
  include Deliverable
  # def confirmation(thing)
  #   "You got #{thing}."
  # end

  def delivery
    "Your order will arrive in 2 business days."
  end

  # def review
  #   "Please rate your order within 30 days."
  # end
end
