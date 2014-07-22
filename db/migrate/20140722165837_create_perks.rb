class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.text :description
      t.references :product, index: true

      t.timestamps
    end
  end
end
