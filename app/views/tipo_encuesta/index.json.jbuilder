json.array!(@tipo_encuesta) do |tipo_encuestum|
  json.extract! tipo_encuestum, :id, :tipo_id, :tipo_nombre
  json.url tipo_encuestum_url(tipo_encuestum, format: :json)
end
