# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedule do
    year 1
    Month 1
    week 1
    statue "MyString"
    plan_man_days 1
    acctual_man_days 1
    assigned_project_id 1
  end
end
