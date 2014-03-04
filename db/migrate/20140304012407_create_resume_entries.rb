class CreateResumeEntries < ActiveRecord::Migration
  def change
    create_table :resume_entries do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
