class CreateCompanyDepartmentFields < ActiveRecord::Migration[5.1]
  def change
    create_table :company_department_fields do |t|
      t.string :name
      t.references :company_department, foreign_key: true

      t.timestamps
    end
  end
end
