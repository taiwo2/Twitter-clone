class CreateTweeters < ActiveRecord::Migration[6.1]
  def change
    create_table :tweeters do |t|
      t.text :tweet

      t.timestamps
    end
  end
end
