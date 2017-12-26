ActiveAdmin.register Company do
  permit_params :name

  index do
    selectable_column
    column :name
    column do |company|
      link_to(
        "Branches (#{company.branches.count})",
        admin_company_branches_path(company)
      )
    end
    column do |company|
      link_to(
        "Departments (#{company.departments.count})",
        admin_company_departments_path(company)
      )
    end
    actions
  end

end
