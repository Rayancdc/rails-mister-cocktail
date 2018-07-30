class CocktailsController < ApplicationController
  def index
    @search = params[:search]
    if @search.present?
      @cocktails = Cocktail.all.select do |cocktail|
        cocktail[:name].downcase.include? (@search.downcase)
      end
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def random
    @cocktail = Cocktail.all.sample
    redirect_to cocktail_path(@cocktail)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :image)
  end
end
