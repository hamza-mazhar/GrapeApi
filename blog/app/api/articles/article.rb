module Converter 
    class Currency < Grape::API
       resources :converter do 
            get :exchange do 
                params
            end
       end 
    end
end