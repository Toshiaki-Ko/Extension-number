class MembersController < ApplicationController
  #before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    number.find(:all)
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  #def set_member
  #  @member = Member.find(params[:id])
  #end


end
