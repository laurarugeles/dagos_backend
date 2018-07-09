class ProductTypeAttribute < ApplicationRecord
  belongs_to :product_type
  belongs_to :attribute
end

# == Schema Information
#
# Table name: product_type_attributes
#
#  id              :bigint(8)        not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  attribute_id    :bigint(8)
#  product_type_id :bigint(8)
#
# Indexes
#
#  index_product_type_attributes_on_attribute_id     (attribute_id)
#  index_product_type_attributes_on_product_type_id  (product_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (attribute_id => attributes.id)
#  fk_rails_...  (product_type_id => product_types.id)
#
