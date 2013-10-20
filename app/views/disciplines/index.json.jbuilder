json.array!(@disciplines) do |discipline|
  json.extract! discipline, :name, :description, :photo_url, :level_1_description, :level_2_description, :level_3_description, :level_4_description, :all_levels, :apparatus_description, :apparatus_photo_urls
  json.url discipline_url(discipline, format: :json)
end
