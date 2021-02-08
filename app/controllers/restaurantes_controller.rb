class RestaurantesController < ApplicationController
  after_filter :avisa_termino

  def index
    @restaurantes = Restaurante.order :nome
  end

  def show
    @restaurante = Restaurante.find(params[:id])
  end

  def destroy
    @restaurante = Restaurante.find(params[:id])
    @restaurante.destroy
    redirect_to(action: "index")
  end

  def new
    @restaurante = Restaurante.new
  end

  def create
    @restaurante = Restaurante.new(params[:restaurante])

    if @restaurante.save
      redirect_to action: "show", id: @restaurante
    else
      render action: "new"
    end
    redirect_to(action: "show", id: @restaurante)
  end

  def edit
    @restaurante = Restaurante.find params[:id]
    if @restaurante.update_attributes(params[:restaurante])
      redirect_to action: "show", id: @restaurante
    else
      render action: "edit"
    end
  end

  def update
    @restaurante = Restaurante.find(params[:id])
    @restaurante.update_attributes(params[:restaurante])
    redirect_to action: "show", id: @restaurante
  end

  private
    def avisa_termino
        logger.info "Action #{params[:action]} terminada"
    end
end
