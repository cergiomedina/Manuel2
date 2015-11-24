json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :alumno_rut, :alumno_nombre, :alumno_apellido, :alumno_correo, :alumno_contrasena
  json.url alumno_url(alumno, format: :json)
end
