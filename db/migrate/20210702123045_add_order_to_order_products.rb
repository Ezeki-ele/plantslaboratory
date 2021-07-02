class AddOrderToOrderProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_products, :order, null: false, foreign_key: true
  end
end
