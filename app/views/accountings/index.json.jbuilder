json.array!(@accountings) do |accounting|
  json.extract! accounting, :id, :title, :expense, :time
  json.url accounting_url(accounting, format: :json)
end
