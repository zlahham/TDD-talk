require 'car'

describe Car do
  it 'responds to has_paid?' do
    expect(subject).to respond_to(:paid?)
  end
end
