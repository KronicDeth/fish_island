class CasesController < ApplicationController
  before_filter :find_case, :only => [:destroy, :edit, :show, :update]

  respond_to :html

  def create
    @case = Case.new(params[:case])

    if @case.save
      flash[:notice] = 'Case was successfully created.'
    end

    respond_with @case
  end

  def destroy
    @case.destroy

    flash[:notice] = 'Case was successfully destroyed.'

    respond_with @case
  end

  def edit
    respond_with @case
  end

  def index
    @cases = Case.all

    respond_with @cases
  end

  def new
    @case = Case.new

    respond_with @case
  end

  def show
    respond_with @case
  end

  def update
    if @case.update_attributes(params[:case])
      flash[:notice] = 'Case was successfully updated.'
    end

    respond_with @case
  end

  private

  def find_case
    @case = Case.find(params[:id])
  end
end
