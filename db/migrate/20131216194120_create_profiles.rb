class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profile do |t|
      t.string :name
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
