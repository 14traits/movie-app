class ChangeEnglishToBooleanInMovices < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :english, "boolean USING CAST(english AS boolean)"
  end
end
