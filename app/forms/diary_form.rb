class DiaryForm
  include ActiveModel::Model
  attr_accessor :date, :weight, :comment, :diary

  validates :date, presence: true
  validates :weight, presence: true
  validates :comment, presence: true
  # validates :user, presence: true

  def initialize(params: {})
    @diary = Diary.new(params)
  end

  def save
    binding.pry
    return false if invalid?
    # binding.pry
    # Diary.create(date: date, weight: weight, comment: comment)
    @diary.save
    true
  end
end