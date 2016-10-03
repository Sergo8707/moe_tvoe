class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items

  validates :name, presence: true, length: {maximum: 35}

  before_validation :set_name, on: :create

  private

  # задаем юзеру случайное имя, если оно пустое
  def set_name
    self.name = "Меняла №#{rand(777)}" if self.name.blank?
  end

  def link_subscriptions
    Subscription.where(user_id: nil, user_email: self.email).update_all(user_id: self.id)
  end

end
