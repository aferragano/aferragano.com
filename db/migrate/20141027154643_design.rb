class Design < ActiveRecord::Migration
  def change
  	create_table :designs do |t|
  		t.string :title
  		t.text :description
  		t.string :image_path
  		
  		t.belongs_to :user

  		t.timestamps
  	end
  end
end
