require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('pry')
require('pg')
require('Store')
require('Brand')
require('Inventory')


get('/') do
  erb:index
end

post('/') do
  erb:index
end

get('/stores') do
  erb:stores
end

post('/stores') do
  erb:stores
end

get('stores/:id') do
  erb:store_view
end

get('stores/:id/edit') do
  erb:store_edit
end

patch('/stores/:id/edit') do
  erb:store_edit
end

post('/stores/:id/add_brand') do
  erb:store_edit
end

get('/brands') do
  erb:brands
end

post('/brands') do
  # if brands already exists
  redirect to('/')
  erb:brands
end

get('/brands/:id/stores') do
  erb:brand
end

get('/shoes/:id/stores') do
  erb:shoe
end

get('/shoes') do
  erb:shoes
end

post('/stores/:id/add_brand') do
  erb:store_edit
end

delete('/stores/:id/delete') do
  erb:index
end

delete('/stores/:id/delete_brand/:brand_id') do
  erb:store_edit
end

delete('/stores/:id/delete_shoes/:shoe_id') do
  erb:store_edit
end

delete('/brands/:id/delete_shoes/:shoe_id') do
  erb:store_edit
end
