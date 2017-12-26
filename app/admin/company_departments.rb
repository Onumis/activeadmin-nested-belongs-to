ActiveAdmin.register Company::Department, as: 'Department' do
  permit_params :name

  belongs_to :company

  index do
    selectable_column
    column :name
    column do |department|
      link_to(
        "Fields (#{department.fields.count})",
        admin_department_fields_path(department)
      )
    end
    actions
  end

end
