# == Schema Information
#
# Table name: attributes
#
#  id                    :bigint(8)        not null, primary key
#  attribute_description :string
#  attribute_name        :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class AttributeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
