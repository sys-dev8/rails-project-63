# frozen_string_literal: true

module HexletCode
  # Класс Tag формирует тэги
  class Tag
    def self.build(tag, options = {})
      result = []
      options.each { |a, b| result << " #{a}=\"#{b}\"" }
      block_given? ? "<#{tag}#{result.join}>#{yield}</#{tag}>" : "<#{tag}#{result.join}>"
    end
  end
end
