class Post < Granite::ORM::Base
  adapter mysql
  table_name posts
  has_many :comments


  # id : Int64 primary key is created for you
  field title : String
  field body : String
  timestamps
end
