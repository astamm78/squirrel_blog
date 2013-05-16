class Tag < ActiveRecord::Base

  has_many :entries
  has_many :posts, :through => :entries

  validates :tag, :uniqueness => true

  def self.save_tag(post_id, tag)
    new_tag = Tag.new(:tag => tag)
    if new_tag.save
      Entry.create( :post_id  => post_id,
                    :tag_id   => new_tag.id )
    else
      Entry.create( :post_id  => post_id,
                    :tag_id   => Tag.find_by_tag(tag).id )
    end
  end

end
