json.extract! supplier, :id, :company_name, :contact_name, :phone, :email, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
