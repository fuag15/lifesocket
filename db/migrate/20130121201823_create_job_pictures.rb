class CreateJobPictures < ActiveRecord::Migration
  def change
    create_table :job_pictures do |t|
      t.string :picture

      t.timestamps
    end
  end
end
