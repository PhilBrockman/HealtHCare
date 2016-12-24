class AddColumnsToPatients < ActiveRecord::Migration
  def change
      add_column :patients, :birthdate, :date
      add_column :patients, :bloodgroup, :string
      add_column :patients, :tb, :boolean
      add_column :patients, :cigarettes, :boolean
      add_column :patients, :drug_use, :text
      add_column :patients, :hiv, :boolean
      add_column :patients, :bmi, :float
      add_column :patients, :height, :float
      add_column :patients, :diabetes, :boolean
      add_column :patients, :medication_history, :text
      add_column :patients, :medical_history, :text
  end
end
