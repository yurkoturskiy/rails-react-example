Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphqlPlayground::Rails::Engine, at: "/playground", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  root 'application#frontend'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end