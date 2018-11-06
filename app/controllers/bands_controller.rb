class BandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_band, only: [:show, :edit, :update, :destroy]

  # GET /bands
  # GET /bands.json
  def index
    @bands = Band.all
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
  end

  # GET /bands/new
  def new
    @band = Band.new
  end

  # GET /bands/1/edit
  def edit
  end

  # POST /bands
  # POST /bands.json
  def create
    @band = Band.new(band_params)
    @band.images.attach(params[:band][:images])

    respond_to do |format|
      if @band.save
        format.html { redirect_to @band, notice: 'Band was successfully created.' }
        format.json { render :show, status: :created, location: @band }
      else
        format.html { render :new }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bands/1
  # PATCH/PUT /bands/1.json
  def update
    respond_to do |format|
      if @band.update(band_params)
        @band.images.attach(params[:band][:images])
        format.html { redirect_to @band, notice: 'Band was successfully updated.' }
        format.json { render :show, status: :ok, location: @band }
      else
        format.html { render :edit }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band.destroy
    respond_to do |format|
      format.html { redirect_to bands_url, notice: 'Band was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_image_attachment
    imageblob = ActiveStorage::Blob.find_signed(params[:id])
    blob_id = imageblob.id
    imageattachment = ActiveStorage::Attachment.find_by(blob_id: blob_id)

    if imageattachment != nil && imageattachment.purge
      imageblob.purge
    end
    redirect_to band_url(@band.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(:name, :bio, :genre, :status, :images, user_ids:[])
    end
end
