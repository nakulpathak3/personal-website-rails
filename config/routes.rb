Rails.application.routes.draw do
  root 'home#index'
  mount Blorgh::Engine, at: '/blog', as: 'blog'
end
