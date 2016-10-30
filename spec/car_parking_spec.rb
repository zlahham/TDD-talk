require 'car_parking'

describe CarParking do
  it 'responds to open_barrier' do
    expect(subject).to respond_to(:open_barrier)
  end
end
