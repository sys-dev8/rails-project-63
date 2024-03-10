# frozen_string_literal: true

require_relative "hexlet_code/version"
require_relative "hexlet_code/tag"
require_relative "hexlet_code/form_builder"

# Основной модуль
module HexletCode
  def self.form_for(object, url: "#", method: "post", &block)
    @html_elements = []
    @html_elements << "<form action=\"#{url}\" method=\"#{method}\">"

    block.call(FormBuilder.new(object))

    @html_elements << "</form>"
    @html_elements.join
  end
end
