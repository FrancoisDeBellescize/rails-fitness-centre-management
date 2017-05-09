class ClassesController < ApplicationController
  before_action :set_class, only: [:show, :edit, :update, :destroy]

  def index
    @classes = Classe.all
  end

  def show
  end

  def new
    @classe = Classe.new
  end

  def edit
  end

  def create
    @classe = Classe.new(class_params)

    respond_to do |format|
      if @classe.save
        format.html { redirect_to @classe, notice: 'Classe was successfully created.' }
        format.json { render :show, status: :created, location: @classe }
      else
        format.html { render :new }
        format.json { render json: @classe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @classe.update(class_params)
        format.html { redirect_to @classe, notice: 'Classe was successfully updated.' }
        format.json { render :show, status: :ok, location: @classe }
      else
        format.html { render :edit }
        format.json { render json: @classe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @classe.destroy
    respond_to do |format|
      format.html { redirect_to classes_url, notice: 'Classe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_class
      @classe = Classe.find(params[:id])
    end

    def class_params
      params.require(:classe).permit(:name, :day, :description, :instructor_name, :date_start, :time)
    end
end
