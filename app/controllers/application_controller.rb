require 'pry'

class ApplicationController < Sinatra::Base



  set :default_content_type, 'application/json'
  # add routes

  get '/bakeries' do 
    bakeries = Bakery.all 

    bakeries.to_json
  end

  get '/bakeries/:id' do

    bakeries = Bakery.find(params[:id])
    bakeries.to_json
  end
  
  get '/baked_goods/by_price' do
    price = BakedGood.all.order(:price)
    binding.pry
    price.to_json
  end

end
