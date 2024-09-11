Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      # Allow requests from your React app (localhost:3001)
      origins 'http://localhost:3001'
  
      # Allow all resources and the necessary methods
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  