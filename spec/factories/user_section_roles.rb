# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_section_role do
    user nil
    section_id 1
    section_type "MyString"
    role nil
  end
end
