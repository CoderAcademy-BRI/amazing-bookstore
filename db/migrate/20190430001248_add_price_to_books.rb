class AddPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :price, :decimal, default: 0
  end
end
