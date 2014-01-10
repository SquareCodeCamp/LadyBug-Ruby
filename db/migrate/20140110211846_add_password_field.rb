class AddPasswordField < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :password
    end
  end
end
