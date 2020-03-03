module ProductsHelper
  
    def carting
        session[:cart] = [] unless session[:cart]
        session[:cart]
    end
end
