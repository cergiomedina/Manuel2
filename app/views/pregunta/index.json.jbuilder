json.array!(@pregunta) do |preguntum|
  json.extract! preguntum, :id, :pregunta_id, :pregunta_enunciado, :pregunta_descripcion, :pregunta_opciones
  json.url preguntum_url(preguntum, format: :json)
end
