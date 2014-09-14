json.array!(@punchcards) do |punchcard|
  json.extract! punchcard, :id, :timein, :timeout, :user_id
  json.url punchcard_url(punchcard, format: :json)
end
