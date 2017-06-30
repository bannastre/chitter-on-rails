Rails.application.routes.draw do
  get 'welcome/index'

  resources :messages

  # constraints Clearance::Constraints::SignedIn.new { |user| user.admin? } do
  #   root to: "admin/dashboards#show", as: :admin_root
  # end
  #
  # constraints Clearance::Constraints::SignedIn.new do
  #   root to: "dashboards#show", as: :signed_in_root
  # end
  #
  # constraints Clearance::Constraints::SignedOut.new do
  #   root to: "marketing#index"
  # end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
