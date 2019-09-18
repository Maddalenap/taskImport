Rails.application.routes.draw do
    resources :candidates do
    collection {post :import}
    end
    resources :notes do
    collection {post :import}
    end

  root to: "candidates#index"

end
