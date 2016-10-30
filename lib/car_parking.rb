require_relative 'car'

class CarParking
  def open_barrier(payment_status = true)
    Car.new(payment_status)
  end
end
