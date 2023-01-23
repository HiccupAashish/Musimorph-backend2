class CreateSoundobjectlists < ActiveRecord::Migration[6.1]
  def change
    create_table :soundobjectlists do |t|
      t.string :Name
      t.string :image
      t.string :description
      t.string :color
      t.string :Author

      t.timestamps
    end
  end
end
