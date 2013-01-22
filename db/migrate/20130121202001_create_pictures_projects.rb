class CreatePicturesProjects < ActiveRecord::Migration
  def change
    create_table :pictures_projects do |t|
      t.references :project
      t.references :project_picture

      t.timestamps
    end
    add_index :pictures_projects, :project_id
    add_index :pictures_projects, :project_picture_id
  end
end
