class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |entry|
      entry.integer :post_id
      entry.integer :tag_id
    end
  end
end
