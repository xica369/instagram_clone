FactoryBot.define do
  model = Post
  factory_key = model.model_name.singular.to_sym # :post
  factory factory_key, class: model do
    description { Faker::Educator.degree }
    user factory: User.model_name.singular.to_sym
  end
end