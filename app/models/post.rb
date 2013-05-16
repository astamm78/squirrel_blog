class Post < ActiveRecord::Base

  has_many :entries
  has_many :tags, :through => :entries

  validates :content, :presence => true
  validates :title, :presence => true

end
