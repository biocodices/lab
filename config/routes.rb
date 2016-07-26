Rails.application.routes.draw do
  resources :notebooks
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'samples#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  post 'dna_extractions/upload_quantification_files' => 'dna_extractions#upload_quantification_files'
  get 'dna_extractions/select_quantification_files' => 'dna_extractions#select_quantification_files'

  post 'dna_extractions/upload_gel_picture' => 'dna_extractions#upload_gel_picture'

  get 'notebooks/:subdir/:image_filename' => 'notebooks#image'

  get 'patients/upload_reports' => 'patients#upload_reports', as: :upload_reports

  resources :sequencings
  resources :libraries
  resources :qubit_quantifications
  resources :nanodrop_quantifications
  resources :samples
  resources :dna_extractions
  resources :patients
  resources :projects
  resources :notebooks

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
