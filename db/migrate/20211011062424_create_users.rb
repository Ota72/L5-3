class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :pass
      t.integer :age
      t.string :contents

      t.timestamps
    end
  end
end
