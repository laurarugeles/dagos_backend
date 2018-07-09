# == Schema Information
#
# Table name: product_attribute_values
#
#  id                 :bigint(8)        not null, primary key
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  attribute_value_id :bigint(8)
#  product_id         :bigint(8)
#
# Indexes
#
#  index_product_attribute_values_on_attribute_value_id  (attribute_value_id)
#  index_product_attribute_values_on_product_id          (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (attribute_value_id => attribute_values.id)
#  fk_rails_...  (product_id => products.id)
#

require 'test_helper'

class ProductAttributeValueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
