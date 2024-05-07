class IdCardsController < ApplicationController
  before_action :set_id_card, only: %i[ show edit update destroy ]

  # GET /id_cards or /id_cards.json
  def index
    @id_cards = IdCard.all
  end

  # GET /id_cards/1 or /id_cards/1.json
  def show
  end

  # GET /id_cards/new
  def new
    @id_card = IdCard.new
  end

  # GET /id_cards/1/edit
  def edit
  end

  # POST /id_cards or /id_cards.json
  def create
    @id_card = IdCard.new(id_card_params)

    respond_to do |format|
      if @id_card.save
        format.html { redirect_to id_card_url(@id_card), notice: "Id card was successfully created." }
        format.json { render :show, status: :created, location: @id_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @id_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /id_cards/1 or /id_cards/1.json
  def update
    respond_to do |format|
      if @id_card.update(id_card_params)
        format.html { redirect_to id_card_url(@id_card), notice: "Id card was successfully updated." }
        format.json { render :show, status: :ok, location: @id_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @id_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id_cards/1 or /id_cards/1.json
  def destroy
    @id_card.destroy

    respond_to do |format|
      format.html { redirect_to id_cards_url, notice: "Id card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id_card
      @id_card = IdCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def id_card_params
      params.require(:id_card).permit(:id_no)
    end
end
