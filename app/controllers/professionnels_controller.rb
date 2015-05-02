class ProfessionnelsController < ApplicationController
  def index
    @professionnels = Professionnel.all
  end

  def show
    @professionnel = Professionnel.find(params[:id])
  end

  def new
    @professionnel = Professionnel.new
  end

  def edit
    @professionnel = Professionnel.find(params[:id])
  end

  def create
    @professionnel = Professionnel.new(professionnel_params)
    if @professionnel.save
      redirect_to professionnel_url
    else
      render :new
    end
  end

  def update
    @professionnel = Professionnel.find(params[:id])

    if @professionnel.update_attributes(professionnel_params)
      redirect_to professionnel_path(@professionnel)
    else
      render :edit
    end
  end

  def destroy
    @professionnel = Professionnel.find(params[:id])
    @professionnel.destroy
    redirect_to professionnels_path
  end

  private 
  def professionnel_params
    params.require(:professionnel).permit(:nom, :prenom, :adresse, :specialite)
  end

end
