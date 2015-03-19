class CreateObjetos < ActiveRecord::Migration
  def change
    create_table :objetos do |t|
      t.string :nome_objeto
      t.string :nome_pessoa
      t.integer :edade_pessoa
      t.text :descripcao_breve
      t.text :descripcao_longa
      t.string :image_url

      t.timestamps
    end
  end
end
