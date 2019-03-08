module UserInformation
    class Data < Grape::API

        resource :user do

            desc 'Get all user'
            get do 
                User.all
            end

            desc 'Create New User'
            params do
                requires :name, type: String
                requires :age, type: Integer
                requires :city, type:String
            end
            post do
                User.create!({
                    name:params[:name],
                    age:params[:age],
                    city:params[:city],
                })
            end

            desc "Delete User by id"
            params do 
                requires :id, type: String
            end

            delete ':id' do 
                User.find(params[:id]).destroy!
            end
        end
    end
end