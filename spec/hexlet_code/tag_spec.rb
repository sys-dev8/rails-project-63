# frozen_string_literal: true

RSpec.describe HexletCode::Tag do
  it "form_for" do
    expect(HexletCode.form_for).to eq("<form></form>")
  end

  it "img" do
    expect(HexletCode::Tag.build("img", src: "path/to/image")).to eq("<img src=\"path/to/image\">")
  end

  it "input" do
    expect(HexletCode::Tag.build("input", type: "submit",
                                          value: "Save")).to eq("<input type=\"submit\" value=\"Save\">")
  end

  it "label" do
    expect(HexletCode::Tag.build("label") { "Email" }).to eq("<label>Email<\/label>")
  end

  it "div" do
    expect(HexletCode::Tag.build("div") {}).to eq("<div><\/div>")
  end
end
