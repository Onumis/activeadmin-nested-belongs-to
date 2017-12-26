ActiveAdmin.register Company::Department::Field, as: 'Field' do
  permit_params :name

  belongs_to :company_department, class_name: 'Company::Department'


  controller do
    nested_belongs_to :company, :company_department
  end

end
