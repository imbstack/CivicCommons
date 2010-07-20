# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :event do |f|
  f.title "MyString"
  f.when "2010-07-15 15:22:25"
  f.where "MyString"
  f.moderator_id ""
end
