Rails.application.routes.draw do

  api_version( :module   => "Api::V1",
               :header   => { :name => "Accept", :value => "application/vnd.stories.com; version=1"},
               :defaults => {:format => :json},
               :default  => true) do

    resources :books
  end

end
