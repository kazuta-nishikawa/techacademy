json.extract! body_datum, :id, :weight, :fat, :date, :created_at, :updated_at
json.url body_datum_url(body_datum, format: :json)
