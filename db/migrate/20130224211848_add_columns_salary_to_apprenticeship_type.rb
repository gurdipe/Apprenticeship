class AddColumnsSalaryToApprenticeshipType < ActiveRecord::Migration
  def change
    add_column :apprenticeship_types, :print_salary, :string
  end
end
