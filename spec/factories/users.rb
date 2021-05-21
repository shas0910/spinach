FactoryBot.define do
  factory :user do
    user_name {"abcde"}
    email {"abc@abc"}
    password {"abc123"}
    password_confirmation {password}
  end
end
