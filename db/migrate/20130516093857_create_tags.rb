class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |tag|
      tag.string :tag
    end
  end
end
