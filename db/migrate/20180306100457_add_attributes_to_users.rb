class AddAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dedication, :string
    add_column :users, :stay, :string
    add_column :users, :description, :text
    add_column :users, :typeofmusic, :string, inclusion: { in: %w(rock techno pop hiphop classic minimal)}
    add_column :users, :string, :string
  end
end
