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

class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments

  validates :name, presence: true,
                   length: { minimum: 3, maximum: 60 },
                   uniqueness: { case_sensitive: true }

  def to_s
    name
  end
end
