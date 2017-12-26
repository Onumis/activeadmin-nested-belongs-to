ActiveAdmin.register Branch do
  permit_params :name

  belongs_to :company

  index do
    selectable_column
    column :name
    column do |branch|
      link_to(
        "Contacts (#{branch.contacts.count})",
        admin_branch_contacts_path(branch)
      )
    end
    actions
  end
end
