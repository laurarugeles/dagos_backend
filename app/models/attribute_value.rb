class AttributeValue < ApplicationRecord
  belongs_to :attribute
end

# == Schema Information
#
# Table name: attribute_values
#
#  id                          :bigint(8)        not null, primary key
#  attribute_value_description :string
#  attribute_value_name        :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  attribute_id                :bigint(8)
#
# Indexes
#
#  index_attribute_values_on_attribute_id  (attribute_id)
#
# Foreign Keys
#
#  fk_rails_...  (attribute_id => attributes.id)
#
