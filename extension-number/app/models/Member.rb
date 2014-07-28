class Member < ActiveRecord::Base
validates :name, presence: true, uniqueness: false

validates :pronunciation, presence: true,
  :format => { :with => /\A[\p{hiragana}ー－]+\z/ },
  uniqueness: false

validates :phone_number, presence: true,
  numericality: { only_integer: true,
    greater_than: 999, less_than: 10000, allow_blank: true },
  uniqueness: false

  def self.search(search)
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Member.where(["pronunciation LIKE ?", "%#{search}%"])
    else
      Member.all #全て表示。
    end
  end
end
