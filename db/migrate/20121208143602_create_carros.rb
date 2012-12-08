class CreateCarros < ActiveRecord::Migration

  def change
    create_table :carros do |t|
      t.string :modelo
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
