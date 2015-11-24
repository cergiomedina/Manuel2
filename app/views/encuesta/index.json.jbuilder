json.array!(@encuesta) do |encuestum|
  json.extract! encuestum, :id, :encuesta_id, :encuesta_estado, :encuesta_nombre, :encuesta_descripcion
  json.url encuestum_url(encuestum, format: :json)
end
