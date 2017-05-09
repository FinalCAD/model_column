require "spec_helper"

RSpec.describe ModelColumn do
  it "has a version number" do
    expect(ModelColumn::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
end
