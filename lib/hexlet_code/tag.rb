# frozen_string_literal: true

module HexletCode
  # Модуль Tag формирует тэги
  module Tag
    def self.build(tag, options = {})
      result = []
      options.each { |a, b| result << " #{a}=\"#{b}\"" }
      if block_given?
        "<#{tag}#{result.join}>#{yield}</#{tag}>"
      else
        "<#{tag}#{result.join}>"
      end
    end
  end
end
