# frozen_string_literal: true

RSpec.describe HexletCode do
  it "has a version number" do
    expect(HexletCode::VERSION).not_to be nil
  end

  it "form_for" do
    expect(HexletCode.form_for).to eq("<form></form>")
  end
end
