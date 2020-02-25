class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def cart
  user_cart = []
  if session[:cart].nil?
    session[:cart] = user_cart
  else
    
  end
  end
  
  
end


require 'rails_helper'

RSpec.describe ApplicationController do
  describe 'cart' do
    it "returns the user's shopping cart, an initially empty array" do
      expect(controller.cart).to eq []
    end

    it "creates a cart in the session if one doesn't exist" do
      expect(@request.session[:cart]).to be nil
      expect(controller.cart).to eq session[:cart]
    end

    it "returns the existing cart if one already exists" do
      groceries = ['apples', 'bananas', 'pears']
      @request.session[:cart] = groceries
      expect(controller.cart).to eq @request.session[:cart]
      expect(controller.cart).to eq groceries
    end
  end
end
