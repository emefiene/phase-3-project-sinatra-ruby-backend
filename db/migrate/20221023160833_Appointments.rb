class Appointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.integer :patient_id
      t.integer :physician_id
    end
  end
end
