Rails.application.routes.draw do
# EXAMPLE HTML ROUTE
# get "/photos" => "photos#index"
# EXAMPLE JSON ROUTE WITH API NAMESPACE
# namespace :api do
# get "/photos" => "photos#index"
# end
namespace :api do
  get "/fitness_trackers" => "fitness_trackers#index"
  get "/fitness_trackers/:id" => "fitness_trackers#show"
  post "fitness_trackers" => "fitness_trackers#create"
  end


end
