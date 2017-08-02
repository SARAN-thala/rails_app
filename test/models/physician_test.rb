# == Schema Information
#
# Table name: physicians
#
#  id         :integer          not null, primary key
#  name       :string(60)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_physicians_on_name  (name)
#

require 'test_helper'

class PhysicianTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
