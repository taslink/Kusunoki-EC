class WelcomeController < ApplicationController
  def index
    #Productモデルからtypeがenvelopeのすべてのレコードを取得
    @product_envelopes = Product.where(product_type: 'envelope').order(sort_no: :asc)
    #Productモデルからtypeがcardのすべてのレコードを取得
    #@product_cards = Product.where(product_type: 'card').order(product_code: :asc)
  end
end