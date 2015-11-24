json.array!(@profesors) do |profesor|
  json.extract! profesor, :id, :profesor_rut, :profesor_nombre, :profesor_apellido, :profesor_correo, :profesor_contrasena
  json.url profesor_url(profesor, format: :json)
end
