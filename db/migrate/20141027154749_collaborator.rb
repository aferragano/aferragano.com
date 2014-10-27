class Collaborator < ActiveRecord::Migration
  def change
  	create_table :collaborators do |t|
  		t.string :name
  		t.string :email
  		t.string :github_url
  		t.string :image
  		t.belongs_to :dev

  		t.timestamps
  	end
  end
end
