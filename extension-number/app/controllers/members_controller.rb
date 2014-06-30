class MembersController < ApplicationController
  #before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
  end

# Numberモデルにある全てのデータを表示
  def show
    @members = Member.find(:all)
  end

# Numberモデルにデータを追加
  def new
    @member = Member.new
  end

  def edit
    @member = Member.find(params[:id])
  end

# newをした後にcreateでデータベースに格納する
  def create
    @member = Member.new(member_params)
  end

  def update
       @member = Member.find(params[:id])
    @member.assign_attributes(member_params)
    if @member.save
    redirect_to @member, notice: "会員情報更新した"
    else
    render "edit"
    end
  end

  def destroy
  end

end
