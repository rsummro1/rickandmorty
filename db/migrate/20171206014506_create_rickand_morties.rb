class CreateRickandMorties < ActiveRecord::Migration[5.1]
  def change
    create_table :rickand_morties do |t|
      t.text :comment

      t.timestamps
    end
  end
end
