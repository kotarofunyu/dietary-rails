# == Schema Information
#
# Table name: diary_cards
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  card_id    :bigint           not null
#  diary_id   :bigint           not null
#
# Indexes
#
#  index_diary_cards_on_card_id   (card_id)
#  index_diary_cards_on_diary_id  (diary_id)
#
# Foreign Keys
#
#  fk_rails_...  (card_id => cards.id)
#  fk_rails_...  (diary_id => diaries.id)
#
class DiaryCard < ApplicationRecord
  belongs_to :diary
  belongs_to :card
end
