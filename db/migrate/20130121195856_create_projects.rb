class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :blurb
      t.string :version
      t.text :detail
      t.string :team
      t.integer :rank
      t.references :project_category

      t.timestamps
    end
    add_index :projects, :project_category_id
  end
end
