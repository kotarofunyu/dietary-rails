# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(card:)
    @card = card
  end

end
