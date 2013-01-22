class CreateJobsPictures < ActiveRecord::Migration
  def change
    create_table :jobs_pictures do |t|
      t.references :job
      t.references :job_picture

      t.timestamps
    end
    add_index :jobs_pictures, :job_id
    add_index :jobs_pictures, :job_picture_id
  end
end
