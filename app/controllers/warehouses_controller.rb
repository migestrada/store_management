class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:update, :edit, :destroy]

  def index
    @warehouses = Warehouse.all.order(id: :asc)
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)

    return redirect_to warehouses_path if @warehouse.save

    render :new, status: 400
  end

  def edit
    render :new
  end

  def update
    redirect_to warehouses_path if @warehouse.update(warehouse_params)
  end

  def destroy
    redirect_to warehouses_path if @warehouse.destroy
  end

  private

  def set_warehouse
    @warehouse = Warehouse.find(params[:id])
  end

  def warehouse_params
    params.require(:warehouse).permit(:name, :code)
  end
end