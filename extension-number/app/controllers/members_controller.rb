class MembersController < ApplicationController
  #before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
  end

# Numberモデルにある全てのデータを表示
  def show
    @members = Number.find(:all)
  end

# Numberモデルにデータを追加
  def new
    @member = Number.new
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
  
  #重複したところをまとめ
  #def set_member
  #  @member = Member.find(params[:id])
  #end

　#URLから送られてきた値とフォームで入力した値をここに取得
  #def member_params
  #  params.require(:member).permit(:busho, :name, :yomi, :tel)
  #end

end
