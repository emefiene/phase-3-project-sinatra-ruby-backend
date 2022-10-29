class Patients < ActiveRecord::Migration[6.1]
  def change
      create_table :patients do |t|
        t.string :name
        t.string :email
        t.string :address
        t.string :age
        t.integer :phone
      end
  end
end
