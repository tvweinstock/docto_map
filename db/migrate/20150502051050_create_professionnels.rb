class CreateProfessionnels < ActiveRecord::Migration
  def change
    create_table :professionnels do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :specialite

      t.timestamps
    end
  end
end
