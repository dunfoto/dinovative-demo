class Dinovative::ApiV1 < Grape::API
  version 'v1', using: :path, vender: 'dinovative'

  mount Gofix::V1::Users::Base

  route :any, '*path' do
    error!({ message: "The api you were looking for doesn't exist", code: 3001, status: false }, 404)
  end
end
