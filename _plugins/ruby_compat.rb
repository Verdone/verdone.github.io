require "liquid"

module LiquidCompatTaintCheck
  def taint_check(obj)
    return unless obj.respond_to?(:tainted?) && obj.tainted?
  end
end

Liquid::Variable.prepend(LiquidCompatTaintCheck)

unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def taint
      self
    end
  end
end