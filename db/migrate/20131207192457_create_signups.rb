class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.text :name
      t.text :email
      t.text :age
      t.text :goals

      t.timestamps
    end
  end
end
