json.array!(@diymenus) do |diymenu|
  json.extract! diymenu, :id, :public_account_id, :intrger, :parent_id, :name, :key, :url, :is_show, :sort
  json.url diymenu_url(diymenu, format: :json)
end
