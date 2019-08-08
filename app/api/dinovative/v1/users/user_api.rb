module Dinovative::V1::Users
  class UserApi < Grape::API
    resources :users do 
      before do
        authorize_user!
      end
    end
  end
end