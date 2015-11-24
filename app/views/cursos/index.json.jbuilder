json.array!(@cursos) do |curso|
  json.extract! curso, :id, :curso_id, :curso_nombre, :curso_semestre, :curso_ano
  json.url curso_url(curso, format: :json)
end
