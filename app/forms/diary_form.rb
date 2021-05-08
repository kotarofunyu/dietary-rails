class DiaryForm
  include ActiveModel::Model
  attr_accessor :date, :weight, :comment, :diary, :waist, :user

  validates :date, presence: true
  validates :weight, presence: true
  validates :comment, presence: true
  # validates :user, presence: true

  def initialize(attributes = nil, diary: Diary.new)
  # def initialize(params: {})
    # @diary = Diary.new(params)
    @diary = diary
    attributes ||= default_attributes
    super(attributes)
  end

  def save
    # binding.pry
    return false if invalid?
    # binding.pry
    # Diary.create(date: date, weight: weight, comment: comment)
    @diary.save
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