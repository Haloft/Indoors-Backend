class Foodiskoodi < ActiveRecord::Migration[6.1]
  def up
    drop_table :jwt_denylist
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
