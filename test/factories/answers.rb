# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :answer do |f|
  f.datetime "2010-06-30 11:24:36"
  f.owner 1
  f.question_id 1
  f.content "MyText"
end
