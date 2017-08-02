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

class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  validates :name, presence: true,
                   length: { minimum: 3, maximum: 60 },
                   uniqueness: { case_sensitive: true }

  def to_s
    name
  end
end
