Rails.application.routes.draw do
  resources :invoices

  root to: redirect('/invoices')
end
