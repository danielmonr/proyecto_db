json.array!(@actividads) do |actividad|
  json.extract! actividad, :id, :nombre, :descripcion, :ponderacion
  json.url actividad_url(actividad, format: :json)
end
