# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string(60)       not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_name  (name) UNIQUE
#

class Book < ApplicationRecord
  has_many :comments
  validates :name, presence: true,
                   length: { minimum: 3, maximum: 60 },
                   uniqueness: {case_sensitive: true}
end
