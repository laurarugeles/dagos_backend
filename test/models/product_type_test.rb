# == Schema Information
#
# Table name: product_types
#
#  id                       :bigint(8)        not null, primary key
#  product_type_description :string
#  product_type_name        :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class ProductTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
