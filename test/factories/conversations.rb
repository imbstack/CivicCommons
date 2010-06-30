# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :conversation do |f|
  f.started_at ""
  f.finished_at ""
  f.issue_id ""
  f.moderator ""
  f.summary "MyString"
end
