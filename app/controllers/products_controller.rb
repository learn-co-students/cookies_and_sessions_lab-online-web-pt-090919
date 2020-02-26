class ProductsController < ApplicationController

    def index
        
    end

    def add
        cart << params.permit("product")["product"]
        redirect_to root_path
    end

end
