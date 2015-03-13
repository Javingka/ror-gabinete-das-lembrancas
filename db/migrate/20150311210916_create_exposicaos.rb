class CreateExposicaos < ActiveRecord::Migration
  def change
    create_table :exposicaos do |t|
      t.string :pais
      t.string :cidade
      t.string :datas

      t.timestamps
    end
  end
end
