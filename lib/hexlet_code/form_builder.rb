# frozen_string_literal: true

module HexletCode
  # Класс FormBuilder строит форму
  class FormBuilder
    def initialize(object)
      @object = object
    end

    def input(attribute, as: :string, cols: 20, rows: 40)
      value = @object.public_send(attribute).to_s
      element = case as
                when :text
                  "<textarea name=\"#{attribute}\" cols=\"#{cols}\" rows=\"#{rows}\">#{value}</textarea>"
                else
                  "<input name=\"#{attribute}\" type=\"text\" value=\"#{value}\">"
                end
      HexletCode.instance_variable_get(:@html_elements) << element
    end
  end
end
