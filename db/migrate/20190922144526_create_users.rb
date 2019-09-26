class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false, default: ""
      t.string :name, null: false, default: ""
      t.string :profile_url, default: ""

      t.timestamps
    end
  end
end
