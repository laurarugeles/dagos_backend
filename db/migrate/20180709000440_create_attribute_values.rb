class CreateAttributeValues < ActiveRecord::Migration[5.2]
  def change
    create_table :attribute_values do |t|
      t.references :attribute, foreign_key: true
      t.string :attribute_value_name
      t.string :attribute_value_description

      t.timestamps
    end
  end
end
