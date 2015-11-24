json.array!(@curso_alumnos) do |curso_alumno|
  json.extract! curso_alumno, :id, :c_a_id
  json.url curso_alumno_url(curso_alumno, format: :json)
end
