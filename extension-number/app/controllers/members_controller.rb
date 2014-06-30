class MembersController < ApplicationController
  #before_action :set_member, only: [:show, :edit, :update, :destroy]
  def member_params
    params.require(:member).permit(:name, :department,:phone_number,:pronunciation)
  end

  #内線番号一覧
  def index
    @members = Member.all
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
  end

  def destroy
  end

end
