class MembersController < ApplicationController
  #before_action :set_member, only: [:show, :edit, :update, :destroy]
  def member_params
    params.require(:member).permit(:name, :department,:phone_number,:pronunciation)
  end

  #内線番号一覧
  def index
    @members = Member.all
  end

# Numberモデルにある全てのデータを表示
  def show
    @members = Number.find(:all)
  end

# Numberモデルにデータを追加
  def new
    @member = Member.new
  end

  def edit
  end

# newをした後にcreateでデータベースに格納する
  def create
    @member = Number.new(member_params)
  end

  def update
  end

  def destroy
  end
 
end
