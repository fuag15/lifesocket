class SetDefaultRankToZeroOnAll < ActiveRecord::Migration
  def change
    change_column :job_categories, :rank, :integer, default: 0
    change_column :jobs, :rank, :integer, default: 0
    change_column :project_categories, :rank, :integer, default: 0
    change_column :projects, :rank, :integer, default: 0
    change_column :resume_categories, :rank, :integer, default: 0
    change_column :resume_statistics, :rank, :integer, default: 0
  end
end
