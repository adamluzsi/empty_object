require_relative "../lib/empty_object"

class Test < EmptyObject

  def hello_world obj= nil
    if obj.nil?
      obj= "world"
    end
    ::Kernel.puts("Hello #{obj}!")
  end

  def method_missing(method, *args)
    #DSL here
    self.hello_world method
  end

end

test= Test.new

test.test
test.sup?
test.woooooooooooooooooooorld!
test.send
