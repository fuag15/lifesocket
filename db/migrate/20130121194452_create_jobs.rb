class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :blurb
      t.references :job_category
      t.text :detail
      t.string :employer
      t.integer :rank

      t.timestamps
    end
    add_index :jobs, :job_category_id
  end
end
