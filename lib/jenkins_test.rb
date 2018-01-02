require 'table_flipper'

class JenkinsTest

  # get rid of annoying object id's in error messages
  def inspect
    "<#{self.class.to_s}>"
  end

  def no_method_error
    nil.call_nonexistant_method
  end

  def name_error
    undefined_variable
  end

  def runtime_error
    [1, 2, 3].freeze << 4
  end
end
