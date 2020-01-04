Queenbee.token = Rails.application.credentials.queenbee
if Rails.env.development?
  Queenbee.api_base = 'http://localhost:3024/api'
end
