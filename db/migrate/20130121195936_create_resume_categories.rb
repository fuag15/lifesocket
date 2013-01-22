class CreateResumeCategories < ActiveRecord::Migration
  def change
    create_table :resume_categories do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end
  end
end
