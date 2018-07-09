class CreateProductTypeAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :product_type_attributes do |t|
      t.references :product_type, foreign_key: true
      t.references :attribute, foreign_key: true

      t.timestamps
    end
  end
end
