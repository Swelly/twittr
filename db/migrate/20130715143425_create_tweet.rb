class CreateTweet < ActiveRecord::Migration
  def up
    create_table :tweets do |t|
      t.string :text
      t.belongs_to :user

      t.timestamps
    end
  end

  def down
    drop_table :tweets
  end
end
