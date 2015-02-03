class JoinTable < ActiveRecord::Migration
  def change
  	create_join_table :users, :books
  end
end
