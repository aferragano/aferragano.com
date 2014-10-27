class Tag < ActiveRecord::Migration
  def change
  	create_table :tags do |t|
  		t.string :tag_label

  		t.belongs_to :design
  		
  	end
  end
end
