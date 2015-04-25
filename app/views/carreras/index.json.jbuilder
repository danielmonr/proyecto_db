json.array!(@carreras) do |carrera|
  json.extract! carrera, :id, :nombre, :siglas
  json.url carrera_url(carrera, format: :json)
end
