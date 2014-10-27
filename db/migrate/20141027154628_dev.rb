class Dev < ActiveRecord::Migration
  def change
  	create_table :devs do |t|
  		t.string :title
  		t.text :description
  		t.string :image_path
  		t.string :github_url

  		t.belongs_to :user

  		t.timestamps
  	end
  end
end
