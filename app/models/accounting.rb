class Accounting < ActiveRecord::Base
  belongs_to :user

  def self.dashboard(user)
    data=user.Accounting.select("title,sum(expense) as total").group("title")
    data.map{|d|[d.title,d.total]}
  end
end