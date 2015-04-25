json.array!(@parcials) do |parcial|
  json.extract! parcial, :id, :numero, :calificacion
  json.url parcial_url(parcial, format: :json)
end
