# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text(500)        not null
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_comments_on_book_id  (book_id)
#

class Comment < ApplicationRecord
  belongs_to :book
  validates :body, presence: true,
            length: { maximum: 500 }
end
