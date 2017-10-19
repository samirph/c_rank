Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'projects#home'
  get '/construtoras' => 'projects#companies'
  get '/construtoras/:id' => 'projects#company'
  get '/company-projects' => 'projects#company_projects'

end
