# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

themes = Theme.create(
 [{:name=>'Traditional'},
  {:name=>'Casual'},
  {:name=>'Custom'},
])
print 'themes:', themes.length, "\n"

def create_user(name)
  pw = name + name
  email = "#{name}@bar.com"
  User.create!(:email=>email, :password=>pw, :password_confirmation=>pw)
end
users = []
for email in ['foo', 'bar', 'baz'] do
  users.push(create_user(email))
end
print "users:", users.length, "\n"

accounts = []

for u in users do
  u.email =~ /(.*)@/
  name = $1
  a = u.create_account({
    :name=>name,
    :terms=>true})
  accounts.push(a)
end                       
print "accounts:", accounts.length, "\n"

books = []

for a in accounts do
  subject = Subject.create!(:name=>a.name.reverse)
  title = subject.name + ' is great'
  b = a.books.create(:title=>title, :subject=>subject, :theme=>Theme.find(1+rand(3)), :subject_name=>subject.name)
  books.push(b)
end
print "books:", books.length, "\n"

conts = []

for b in Book.all do
  a = Account.first
  c = a.contributions.create!(:book=>b, :wisdom=>'N/A')
  conts.push(c)
end
print "conts:", conts.length, "\n"
