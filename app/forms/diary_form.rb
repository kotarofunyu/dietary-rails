class DiaryForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :date, :date
  attr_accessor :weight, :comment, :waist, :user

  validates :date, presence: true
  validates :weight, presence: true
  validates :comment, presence: true
  validates :user, presence: true

  def initialize(attributes = nil, diary: Diary.new)
    @diary = diary
    attributes ||= default_attributes
    super(attributes)
  end

  def save
    return false if invalid?

    @diary.update(
      date: date,
      weight: weight,
      waist: waist,
      comment: comment,
      user: user,
      card_ids: [1])
    true
  end

  private
  attr_reader :diary

  def default_attributes
    {
      date: diary.date,
      weight: diary.weight,
      waist: diary.waist,
      comment: diary.comment,
      user: diary.user
    }
  end
end