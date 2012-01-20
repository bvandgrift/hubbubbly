o = YAML::load(File.open(Rails.root.join("config/omniauth.yml")))[Rails.env]

puts "Opening Hubbubbly with the following omniauth information:"

p o

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, o['twitter']['key'], o['twitter']['secret']
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
  provider :facebook, o['facebook']['key'], o['facebook']['secret']
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }
end
