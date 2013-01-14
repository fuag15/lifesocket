class RenamePostContentToDetails < ActiveRecord::Migration
  def change
    rename_column :posts, :content, :full
  end
end
