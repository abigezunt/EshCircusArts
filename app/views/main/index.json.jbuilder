json.array!(@main) do |main|
  json.extract! main, :title, :body
  json.url main_url(main, format: :json)
end
