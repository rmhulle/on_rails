class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.references :user, index: true
      t.references :cidade, index: true
      t.string :descricao
      t.string :detalhes
      t.date :validade

      t.timestamps
    end
  end
end
