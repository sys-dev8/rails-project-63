# frozen_string_literal: true

require_relative "hexlet_code/version"
require_relative "hexlet_code/tag"

# Основной модуль
module HexletCode
  def self.form_for
    HexletCode::Tag.build("form") {}
  end
end
