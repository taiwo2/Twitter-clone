class TweetersController < ApplicationController
  before_action :set_tweeter, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]

  # GET /tweeters or /tweeters.json
  def index
    @tweeters = Tweeter.all.order(created_at: :desc)
    @tweeter = Tweeter.new
  end

  # GET /tweeters/1 or /tweeters/1.json
  def show
  end

  # GET /tweeters/new
  def new
    @tweeter = current_user.tweeters.build
  end

  # GET /tweeters/1/edit
  def edit
  end

  # POST /tweeters or /tweeters.json
  def create
    @tweeter = current_user.tweeters.build(tweeter_params)

    respond_to do |format|
      if @tweeter.save
        format.html { redirect_to root_path, notice: "Tweeter was successfully created." }
        format.json { render :show, status: :created, location: @tweeter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tweeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeters/1 or /tweeters/1.json
  def update
    respond_to do |format|
      if @tweeter.update(tweeter_params)
        format.html { redirect_to @tweeter, notice: "Tweeter was successfully updated." }
        format.json { render :show, status: :ok, location: @tweeter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tweeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeters/1 or /tweeters/1.json
  def destroy
    @tweeter.destroy
    respond_to do |format|
      format.html { redirect_to tweeters_url, notice: "Tweeter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tweeter
    @tweeter = Tweeter.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweeter_params
    params.require(:tweeter).permit(:tweet)
  end
end
