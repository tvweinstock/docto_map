class ChangeAddressSpellingInProfessionelModel < ActiveRecord::Migration
  def change
    change_table :professionnels do |t|
      t.rename :adresse, :address
    end
  end
end
