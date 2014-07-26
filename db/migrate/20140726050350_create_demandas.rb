class CreateDemandas < ActiveRecord::Migration
  def change
    create_table :demandas do |t|
      t.references :cidade, index: true
      t.references :user, index: true
      t.string :descricao
      t.date :validade
      t.string :cidade_origem
      t.string :correspondente
      t.string :status

      t.timestamps
    end
  end
end
