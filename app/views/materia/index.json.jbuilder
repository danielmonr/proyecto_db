json.array!(@materia) do |materium|
  json.extract! materium, :id, :nombre, :horas_semanales
  json.url materium_url(materium, format: :json)
end
