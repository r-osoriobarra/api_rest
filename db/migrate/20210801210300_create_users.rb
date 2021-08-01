class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.integer :login_count, default: 0

      t.timestamps
    end
  end
end
