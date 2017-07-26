require "granite_orm/adapter/mysql"

class Post < Granite::ORM 
  adapter mysql

  # id : Int64 primary key is created for you
  field title : String
  field author : String
  field body : String
  field spotlight : Bool
  field description : String
  timestamps
end
