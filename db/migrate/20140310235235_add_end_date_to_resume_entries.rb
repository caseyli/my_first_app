class AddEndDateToResumeEntries < ActiveRecord::Migration
  def change
    add_column :resume_entries, :end_date, :date
  end
end
