module Trainstory

  class Question

    attr_accessor :text, :answer, :key_person

    def initialize text, answer
      self.text = text
      self.answer = answer
    end

  end

end
