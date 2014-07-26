class CreateCidadeAtuacaos < ActiveRecord::Migration
  def change
    create_table :cidade_atuacaos do |t|
      t.references :user, index: true
      t.references :cidade, index: true

      t.timestamps
    end
  end
end
