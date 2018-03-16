class PostComment < Granite::ORM::Base
  adapter mysql
  table_name post_comments
  belongs_to :post

  # id : Int64 primary key is created for you
  field body : String
  field name : String
  timestamps
end
