class CreatePin2s < ActiveRecord::Migration
  def change
    create_table :pin2s do |t|
      t.string :description
      t.string :string

      t.timestamps
    end
  end
end
