class User < ActiveRecord::Base
  has_many :book_shelves # この行を追加
  has_many :books, :through => :book_shelves # この行を追加
end
