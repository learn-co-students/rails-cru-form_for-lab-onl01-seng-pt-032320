class CreateCreates < ActiveRecord::Migration[5.0]
  def change
    create_table :creates do |t|
      t.string :Song

      t.timestamps
    end
  end
end
