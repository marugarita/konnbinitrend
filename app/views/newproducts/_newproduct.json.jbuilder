json.extract! newproduct, :id, :products_name, :stor_name：string, :release_date, :created_at, :updated_at
json.url newproduct_url(newproduct, format: :json)
