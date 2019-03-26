class AddPostIdToVotes < ActiveRecord::Migration[5.1]
  def change
    add_reference :votes, :post, foreign_key: true
  end
end
