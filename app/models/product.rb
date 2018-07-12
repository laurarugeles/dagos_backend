class Product < ApplicationRecord
  belongs_to :product_type

  def product_type_name
    product_type.product_type_name
  end
end

# == Schema Information
#
# Table name: products
#
#  id                  :bigint(8)        not null, primary key
#  product_description :string
#  product_name        :string
#  product_price       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_type_id     :bigint(8)
#
# Indexes
#
#  index_products_on_product_type_id  (product_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_type_id => product_types.id)
#
