class DiariesController < ApplicationController
  before_action :set_diary, only: %i[ show edit update destroy ]

  # GET /diaries or /diaries.json
  def index
    @diaries = Diary.all.order(date: :asc)
  end

  # GET /diaries/1 or /diaries/1.json
  def show
  end

  # GET /diaries/new
  def new
    # @diary = Diary.new
    @diary_form = DiaryForm.new
  end

  # GET /diaries/1/edit
  def edit
    @diary_form = DiaryForm.new(diary: @diary)
  end

  # POST /diaries or /diaries.json
  def create
    binding.pry
    @diary_form = DiaryForm.new(diary_params)

    if @diary_form.save
      redirect_to diaries_path, notice: "Diary was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /diaries/1 or /diaries/1.json
  def update
    @diary_form = DiaryForm.new(diary_params, diary: @diary)

    if @diary_form.save
      redirect_to diaries_path, notice: "Diary was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /diaries/1 or /diaries/1.json
  def destroy
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url, notice: "Diary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diary
      @diary = Diary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diary_params
      params.fetch(:diary_form, {}).permit(:date, :weight, :waist, :comment, card_ids: []).merge(user: current_user)
    end
end
