FactoryGirl.define do
  factory :user do
    email                  "user@example.com"
    password               "password"
    password_confirmation  "password"
    # after_build { |user| user.confirm! }
  end
end
