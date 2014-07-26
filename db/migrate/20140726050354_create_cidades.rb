class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :cidade_nome
      t.string :estado_long
      t.string :estado_short

      t.timestamps
    end
  end
end
