class CreateResumeStatistics < ActiveRecord::Migration
  def change
    create_table :resume_statistics do |t|
      t.string :name
      t.references :resume_category
      t.integer :rank

      t.timestamps
    end
    add_index :resume_statistics, :resume_category_id
  end
end
