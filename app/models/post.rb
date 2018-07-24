class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: %w(Fiction Non-Fiction), messasge: "%{value} needs to be either Fiction or NonFiction"}
  validates :content, length: {minimum: 100}
end
