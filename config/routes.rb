Rails.application.routes.draw do
  get "/" => "home#top"
  get "/home" => "home#home"
  get "/page/new" => "home#new"
  get "/chatroom/:id" => "home#chatroom"
  get "/chat/new/:page_id" => "home#newchat"
  post "/create/:page_id" => "home#create"
  post "/createpage" => "home#createpage"
end
