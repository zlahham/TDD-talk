class Car
  def initialize(payment_status = true)
    @payment_status = payment_status
  end

  def paid?
    if @payment_status
      true
    else
      false
    end
  end
end
