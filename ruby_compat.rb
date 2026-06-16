class Object
  def tainted?
    false
  end unless method_defined?(:tainted?)

  def taint
    self
  end unless method_defined?(:taint)

  def untaint
    self
  end unless method_defined?(:untaint)
end

class NilClass
  def tainted?
    false
  end unless method_defined?(:tainted?)

  def untaint
    nil
  end unless method_defined?(:untaint)
end