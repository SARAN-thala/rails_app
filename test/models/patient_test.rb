# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  name       :string(60)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_patients_on_name  (name)
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
