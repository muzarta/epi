class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :firstname
      t.string :lastname
      t.string :companyname
      t.string :email
      t.string :state
      t.string :suburb
      t.text :notes

      t.timestamps null: false
    end
  end
end
