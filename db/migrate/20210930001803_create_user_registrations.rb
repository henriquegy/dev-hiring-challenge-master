class CreateUserRegistrations < ActiveRecord::Migration[6.1]
  def change
    unless table_exists?(:user_registrations)
      create_table :user_registrations do |t|
        t.string :name
        t.string :user_name
        t.string :password

        t.timestamps
      end
    end
  end
end
