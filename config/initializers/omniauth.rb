OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '358163614289600', '33ea857816cffb740f22114e46b049f1'
end