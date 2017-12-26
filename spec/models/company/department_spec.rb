# == Schema Information
#
# Table name: company_departments
#
#  id         :integer          not null, primary key
#  name       :string
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_company_departments_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'rails_helper'

RSpec.describe Company::Department, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
