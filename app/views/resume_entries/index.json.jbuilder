json.array!(@resume_entries) do |resume_entry|
  json.extract! resume_entry, :id, :title, :body
  json.url resume_entry_url(resume_entry, format: :json)
end
