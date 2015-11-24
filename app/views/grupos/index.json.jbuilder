json.array!(@grupos) do |grupo|
  json.extract! grupo, :id, :grupo_id
  json.url grupo_url(grupo, format: :json)
end
