class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.boolean :done
      t.date :date
      t.text :name
      t.text :customer

      t.timestamps
    end
  end
end
