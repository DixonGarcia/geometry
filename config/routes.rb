Rails.application.routes.draw do
  get 'geometry/index'
  root 'geometry#index'
  post 'geometry/calculate'
end
