# frozen_string_literal: true

RSpec.describe NewGem do
  it "has a version number" do
    expect(NewGem::VERSION).not_to be(nil)
  end
end
