class Investment < ActiveRecord::Base
  validate :quantity_should_be_positive
  validate :cost_should_be_positive

  def quantity_should_be_positive
    if(quantity<0)
      errors.add :quantity, 'Should be positive'
    end
    def cost_should_be_positive
      if(cost<0)
        errors.add :cost, 'Should be positive'
      end
    end
  end
end
