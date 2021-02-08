class AddUserIdToTweeters < ActiveRecord::Migration[6.1]
  def change
    add_column :tweeters, :user_id, :integer
  end
end
