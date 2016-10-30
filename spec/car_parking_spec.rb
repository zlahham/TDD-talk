require 'car_parking'

describe CarParking do
  it 'responds to open_barrier' do
    expect(subject).to respond_to(:open_barrier)
  end

  it 'opens the barrier when a car pays' do
    car = subject.open_barrier
    expect(car).to be_paid
  end

  it 'does not open if the car has not paid' do
    car = subject.open_barrier(false)
    expect(car).not_to be_paid
  end
end
