FactoryBot.define do
  model = User
  factory_key = model.model_name.singular.to_sym # :user
  factory factory_key, class: model do
    email { Faker::Internet.email }

    password { "Hola1sss21$3" }
    password_confirmation { "Hola1sss21$3" }

    confirmed_at { Time.current }
    name {"xime"}
    username { Faker::Internet.email}

    factory "#{factory_key}_with_set_password" do
      password { 'Hola1sss21$3' }
      password_confirmation { 'Hola1sss21$3' }
    end
  end
end