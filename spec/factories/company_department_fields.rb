# == Schema Information
#
# Table name: company_department_fields
#
#  id                    :integer          not null, primary key
#  name                  :string
#  company_department_id :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_company_department_fields_on_company_department_id  (company_department_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_department_id => company_departments.id)
#

FactoryBot.define do
  factory :company_department_field, class: 'Company::Department::Field' do
    name "MyString"
    company_department nil
  end
end
