class CreatePostPictures < ActiveRecord::Migration
  def change
    create_table :post_pictures do |t|
      t.string :picture

      t.timestamps
    end
  end
end
