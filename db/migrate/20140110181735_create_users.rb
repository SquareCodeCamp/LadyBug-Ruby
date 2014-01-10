class CreateUsers < ActiveRecord::Migration
	def change
    create_table :users do |t|
    	t.string :name, null: false, limit: 100
  	 	t.decimal :lat, :lon, scale: 5, precision: 8
    	t.string :email, limit: 255
    	t.text :bio, limit: 1024
    	t.binary :pic, limit: 5.megabytes
      t.timestamps
    end

    add_index :users, :email
  end
end
