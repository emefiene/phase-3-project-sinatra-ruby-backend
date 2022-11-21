class Reviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comments
      t.integer :patient_id
    end
  end
end