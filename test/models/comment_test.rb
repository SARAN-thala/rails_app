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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
