class ClassesController < ApplicationController
  before_action :set_class, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @classe = Classe.new
  end

  def edit
  end

  def create
    @classe = Classe.new(class_params)
    if @classe.save
      format.html { redirect_to @classe, notice: 'Class was successfully created.' }
    else
      format.html { render :new }
    end
  end

  def update
    if @classe.update(class_params)
      format.html { redirect_to @classe, notice: 'Class was successfully updated.' }
    else
      format.html { render :edit }
    end
  end

  def destroy
    @classe.destroy
    format.html { redirect_to classes_url, notice: 'Class was successfully destroyed.' }
  end

  private
  def set_class
    @classe = Classe.find(params[:id])
  end

  def class_params
    params.require(:classe).permit(:name, :day, :description, :instructor_name, :date_start, :time)
  end
end
