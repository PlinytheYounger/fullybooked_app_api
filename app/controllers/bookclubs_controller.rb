class BookclubsController < ApplicationController
  before_action :set_bookclub, only: [:show, :update, :destroy]

  # GET /bookclubs
  def index
    @bookclubs = Bookclub.all

    render json: @bookclubs.to_json(include: :users)
  end

  # GET /bookclubs/1
  def show
    render json: @bookclub.to_json(include: :users)
  end

  # POST /bookclubs
  def create
    @bookclub = Bookclub.new(bookclub_params)

    if @bookclub.save
      render json: @bookclub, status: :created, location: @bookclub
    else
      render json: @bookclub.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookclubs/1
  def update
    if @bookclub.update(bookclub_params)
      render json: @bookclub
    else
      render json: @bookclub.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookclubs/1
  def destroy
    @bookclub.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookclub
      @bookclub = Bookclub.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookclub_params
      params.require(:bookclub).permit(:name, :genre)
    end
end
