ShopifyApp.configure do |config|

  config.api_key = "74291b2aee1220c0836457f0e88f060e"
  config.secret = "78679823ec6c0a7d3256ca55d878f026"
  config.scope = "read_orders, read_products, write_products"
  config.embedded_app = true

  # config.scripttags = [
  #   {event:'onload', src: 'https://s3-us-west-1.amazonaws.com/hi-js/Hi2.js'}
  # ]
  
end
