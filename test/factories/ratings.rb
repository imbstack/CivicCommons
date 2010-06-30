# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :rating do |f|
  f.datetime "2010-06-30 12:41:25"
  f.person_id 1
  f.parent_type 1
  f.parent_id 1
  f.rating 1
end
