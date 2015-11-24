json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :feed_id, :feed_resumen, :feed_motivo, :feed_fecha
  json.url feedback_url(feedback, format: :json)
end
