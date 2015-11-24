json.array!(@respuesta) do |respuestum|
  json.extract! respuestum, :id, :respuesta_id, :respuesta_valores, :respuesta_fecha
  json.url respuestum_url(respuestum, format: :json)
end
