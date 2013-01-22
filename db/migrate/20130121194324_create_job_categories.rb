class CreateJobCategories < ActiveRecord::Migration
  def change
    create_table :job_categories do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end
  end
end
