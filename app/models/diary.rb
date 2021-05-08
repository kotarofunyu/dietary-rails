# == Schema Information
#
# Table name: diaries
#
#  id         :bigint           not null, primary key
#  comment    :text(65535)
#  date       :date             not null
#  waist      :float(24)
#  weight     :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_diaries_on_user_id           (user_id)
#  index_diaries_on_user_id_and_date  (user_id,date) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Diary < ApplicationRecord
  belongs_to :user
  has_many :diary_cards, dependent: :destroy
  has_many :cards, through: :diary_cards

  validates :date, presence: true
end
