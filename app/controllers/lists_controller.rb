class ListsController < ApplicationController
  before_action :set_list, only: %i[show edit update destroy]

  # GET /lists
  def index
    @lists = List.all
  end

  # GET /lists/1 or /lists/1.json
  def show; end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit; end

  # POST /lists or /lists.json
  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = 'List successfully deleted.'
      redirect_to @list

    else
      flash.now[:alert] = 'Unable to update list'
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1 or /lists/1.json
  def update
    if @list.update(list_params)
      flash[:notice] = 'List successfully updated.'
      redirect_to @list
    else
      flash.now[:alert] = 'Unable to update list'
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1 or /lists/1.json
  def destroy
    @list.destroy
    flash[:notice] = 'List successfully deleted.'
    redirect_to lists_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to lists_path
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:name)
  end
end
