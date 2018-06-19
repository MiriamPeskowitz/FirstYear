class CreateDateOfLovedOnesDeath < ActiveRecord::Migration[5.2]
  def change
    create_table :date_of_loved_ones_death do |t|
      t.date :date_of_loved_ones_death
      t.string :loved_ones_name
      t.references :user

      t.timestamps
    end
  end
end
