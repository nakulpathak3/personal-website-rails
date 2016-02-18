Rails.application.routes.draw do
  root 'home#index'
  mount PersonalBlog::Engine, at: "/blog"
end
