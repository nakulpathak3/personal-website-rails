Rails.application.routes.draw do
  root 'home#index'
  get '/resume', to: redirect('/nakulpathak.pdf')
  mount PersonalBlog::Engine, at: "/blog"
end
