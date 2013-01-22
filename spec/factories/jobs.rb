# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    name "MyString"
    blurb "MyText"
    job_category nil
    detail "MyText"
    employer "MyString"
    rank 1
  end
end
