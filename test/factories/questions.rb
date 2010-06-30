# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :question do |f|
  f.datetime ""
  f.owner ""
  f.askee ""
  f.issue_id ""
  f.content "MyText"
end
