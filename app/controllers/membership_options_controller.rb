class MembershipOptionsController < ApplicationController
  before_action :set_membership_option, only: [:show, :edit, :update, :destroy]
  before_action :routing_admin, except: :show

  def index
    @membership_options = MembershipOption.all
  end

  def show
  end

  def new
    @membership_option = MembershipOption.new
  end

  def edit
  end

  def create
    @membership_option = MembershipOption.new(membership_option_params)
      if @membership_option.save
        redirect_to membership_options_path, notice: 'Membership option was successfully created.'
      else
        render :new
      end
  end

  def update
      if @membership_option.update(membership_option_params)
        redirect_to membership_options_path, notice: 'Membership option was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @membership_option.destroy
    redirect_to membership_options_url, notice: 'Membership option was successfully destroyed.'
  end

  private
  def set_membership_option
    @membership_option = MembershipOption.find(params[:id])
  end

  def membership_option_params
    params.require(:membership_option).permit(:name, :description, :price)
  end
end
