Pca::Application.routes.draw do
  resources :products, :categories, :sites
  root 'sites#index'
end
