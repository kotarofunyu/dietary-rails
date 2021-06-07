# == Schema Information
#
# Table name: diary_plans
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  diaries_id :bigint           not null
#  plans_id   :bigint           not null
#
# Indexes
#
#  index_diary_plans_on_diaries_id  (diaries_id)
#  index_diary_plans_on_plans_id    (plans_id)
#
# Foreign Keys
#
#  fk_rails_...  (diaries_id => diaries.id)
#  fk_rails_...  (plans_id => plans.id)
#
class DiaryPlan < ApplicationRecord
  belongs_to :diaries
  belongs_to :plans
end
