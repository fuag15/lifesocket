# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    blurb "MyText"
    version "MyString"
    detail "MyText"
    team "MyString"
    rank 1
    project_category nil
  end
end
