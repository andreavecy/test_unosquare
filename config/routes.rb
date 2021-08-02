Rails.application.routes.draw do
  root 'process_ip_addresses#index'
  post 'process_ip', to: 'process_ip_addresses#validator'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
