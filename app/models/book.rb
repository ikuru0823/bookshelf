class Book < ActiveRecord::Base
  has_many :book_shelves # この行を追加
  has_many :Users, :through => :book_shelves # この行を追加
end
