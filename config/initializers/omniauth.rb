o = YAML::load(File.open(Rails.root.join("config/omniauth.yml")))[Rails.env]

puts "Opening Hubbubbly with the following omniauth information:"

p o

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, o['twitter']['key'], o['twitter']['secret']
  #provider :google_oauth2, o['google']['key'], o['google']['secret']
  provider :facebook, o['facebook']['key'], o['facebook']['secret']
  #provider :meetup, o['meetup']['key'], o['meetup']['secret']
  provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
  }
end
