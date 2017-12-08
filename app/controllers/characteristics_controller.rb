class CharacteristicsController < ApplicationController
  before_action :set_characteristic, only: [:show, :edit, :update, :destroy]


  # GET /characteristics
  # GET /characteristics.json
  def index
    @characteristics = Characteristic.all

  end

  # GET /characteristics/1
  # GET /characteristics/1.json
  def show
  end

  # GET /characteristics/new
  def new
    @characteristic = Characteristic.new
    @addresses = [['', '']]
    (Address.all).each do |a|
      @addresses << [a.name, a.id]
    end
    @characteristic.build_address
    # @characteristic.build_address
  end

  # GET /characteristics/1/edit
  def edit
    @addresses = [['', '']]
    (Address.all).each do |a|
      @addresses << [a.name, a.id]
    end
  end

  # POST /characteristics
  # POST /characteristics.json
  def create
    # raise params.inspect
    @characteristic = Characteristic.new(characteristic_params)
    @addresses = [['', '']]
    (Address.all).each do |a|
      @addresses << [a.name, a.id]
    end
    respond_to do |format|
      if @characteristic.save
        format.html { redirect_to @characteristic, notice: 'Characteristic was successfully created.' }
        format.json { render :show, status: :created, location: @characteristic }
      else
        format.html { render :new }
        format.json { render json: @characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characteristics/1
  # PATCH/PUT /characteristics/1.json
  def update
    @addresses = [['', '']]
    (Address.all).each do |a|
      @addresses << [a.name, a.id]
    end
    respond_to do |format|
      if @characteristic.update(characteristic_params)
        format.html { redirect_to @characteristic, notice: 'Characteristic was successfully updated.' }
        format.json { render :show, status: :ok, location: @characteristic }
      else
        format.html { render :edit }
        format.json { render json: @characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characteristics/1
  # DELETE /characteristics/1.json
  def destroy
    @characteristic.destroy
    respond_to do |format|
      format.html { redirect_to characteristics_url, notice: 'Characteristic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_characteristic
      @characteristic = Characteristic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def characteristic_params
      params.require(:characteristic).permit(:name, :information_system_id, :type_of_data, :result_type, :address_id)
      # , address_attributes: [:name, :id])
    end
end
