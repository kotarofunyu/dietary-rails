# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_cards_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Card < ApplicationRecord
  has_many :diary_cards, dependent: :destroy
  has_many :diaries, through: :diary_cards, dependent: :restrict_with_error
  belongs_to :user

  DESCRIPTION_MAX_LENGTH = 100

  validates :description, length: { maximum: DESCRIPTION_MAX_LENGTH }
end
