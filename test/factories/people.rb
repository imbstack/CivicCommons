# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :person do |f|
  f.first_name "MyString"
  f.last_name "MyString"
  f.email_address "MyString"
  f.validated false
  f.admin false
end
