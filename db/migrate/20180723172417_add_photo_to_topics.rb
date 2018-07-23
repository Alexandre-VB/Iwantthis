class AddPhotoToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :photo, :string
  end
end
