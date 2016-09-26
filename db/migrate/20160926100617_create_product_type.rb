class CreateProductType < ActiveRecord::Migration[5.0]
  def change
    create_table :products_types do |t|
      t.integer :product_id
      t.integer :type_id
    end
  end
end
