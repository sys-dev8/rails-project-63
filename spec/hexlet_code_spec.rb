# frozen_string_literal: true

User = Struct.new(:name, :job)

RSpec.describe HexletCode do
  context "when creating a form" do
    it "generates correct form tag" do
      user = User.new("rob", "hexlet")

      html_form = HexletCode.form_for(user, url: "/users") do |f|
        f.input :name
      end

      expect(html_form).to start_with('<form action="/users" method="post">')
      expect(html_form).to end_with("</form>")
    end
  end

  context "when adding input fields" do
    it "adds both text and textarea inputs correctly" do
      user = User.new("rob", "hexlet")

      html_form = HexletCode.form_for(user) do |f|
        f.input :name
        f.input :job, as: :text, cols: "20", rows: "40"
      end

      expect(html_form).to include('<input name="name" type="text" value="rob">')
      expect(html_form).to include('<textarea name="job" cols="20" rows="40">hexlet</textarea>')
    end
  end
end
