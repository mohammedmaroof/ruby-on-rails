class Investment < ActiveRecord::Base
  #validate :quantity_should_be_positive
  #validate :cost_should_be_positive
  def worth_at_cost
    worth=0
   # portfolio.investment.each do |investment|
      worth=cost*quantity
    return worth


    end
  def worth_today
    worth=0
    worth=quantity*company.price

  end



    belongs_to :portfolio
   #belongs_to :company
  end

