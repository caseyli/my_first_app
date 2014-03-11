class AddStartDateToResumeEntries < ActiveRecord::Migration
  def change
    add_column :resume_entries, :start_date, :date
  end
end
