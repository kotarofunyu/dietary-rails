# frozen_string_literal: true

class DiaryComponent < ViewComponent::Base
  def initialize(diary:)
    @diary = diary
  end

end