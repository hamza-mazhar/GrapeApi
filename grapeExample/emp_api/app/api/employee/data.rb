module Employee
    class Data < Grape::API
  
      resource :employee_data do
        desc "List all Employee"
        get do
          EmpDatum.all
        end

        desc "Create New Employee"
        params do
            requires :name, type: String
            requires :address, type:String
            requires :age, type:Integer
            requires :city, type:String
            requires :country, type:String
        end

        post do
            EmpDatum.create!({
              name:params[:name],
              address:params[:address],
              age:params[:age],
              city:params[:city],
              country:params[:country]
            })
        end

        desc "delete an employee"
        params do
            requires :id, type: String
        end
        delete ':id' do
            EmpDatum.find(params[:id]).destroy!
        end

        desc "Update Employee Info"
        params do 
            requires :id, type: String
            requires :address, type: String
            requires :age, type:Integer
            requires :city, type:String
            requires :country, type:String
        end

        put ':id' do
            EmpDatum.find(params[:id]).update({
                address:params[:address]
            })
        end


      end
    end
end
  