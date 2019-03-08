
require "employee/data"
require "userInformation/data"
class API < Grape::API
    
    prefix 'api'
    
    version 'v1', using: :path
    mount Employee::Data
    mount UserInformation::Data
end
