class MembersController < ApplicationController

  #before_action :set_member, only: [:show, :edit, :update, :destroy]
  def member_params
    params.require(:member).permit(:name, :department,:phone_number,:pronunciation)
  end
  #内線番号一覧
  def index
#    @members = Member.all
    @members = Member.search(params[:search])
  end
# 内線番号情報の詳細を表示
  def show
    @member = Member.find(params[:id])
  end
  
# 新規作成フォームを表示
  def new
    @member = Member.new
  end

  def edit
    @member = Member.find(params[:id])
  end
# 内線番号の新規登録
  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: "内線番号を登録しました"
    else
      render "new"
    end
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
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to :members, notice: "内線番号情報を削除した"
  end
end
