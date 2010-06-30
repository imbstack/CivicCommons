# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :comment do |f|
  f.datetime "2010-06-30 12:39:43"
  f.owner 1
  f.parent_type 1
  f.parent_id 1
  f.content "MyText"
end
