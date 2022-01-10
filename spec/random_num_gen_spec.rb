# frozen_string_literal: true

RSpec.describe RandomNumGen do
  it "has a version number" do
    expect(RandomNumGen::VERSION).not_to be nil
  end

  it "generate number less than 50" do
    expect(RandomNumGen.lessthan(50)).to be < 50
  end

  it "generate number between 10 to 80" do
    expect(RandomNumGen.between(10,80)).to be_between(10, 80)
  end

  it "generate array of size 10 and contains numbers less than 10" do
    expect(RandomNumGen.arr(10,10)).to include(be < 10).at_least(10).times
  end

  it "generate array of size 10 and contains numbers between 10 to 50" do
    expect(RandomNumGen.arrbetween(10,10,50)).to include(be > 10).at_least(10).times
    .and include(be < 50)
  end
end
