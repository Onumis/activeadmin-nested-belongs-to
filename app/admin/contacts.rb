ActiveAdmin.register Contact do
  permit_params :name, :phone

  belongs_to :branch
end
