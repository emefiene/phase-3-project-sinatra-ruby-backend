class Physicians < ActiveRecord::Migration[6.1]
  def change
    create_table :physicians do |t|
      t.string :image_url
      t.string :name
      t.string :specialty
   end
  end
end
