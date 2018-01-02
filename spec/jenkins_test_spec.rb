require 'spec_helper'

RSpec.describe JenkinsTest do

  let(:test) { described_class.new }

  context "it has funky error messages" do
    it "works with NoMethodErrors" do
      msg =  "(╯°□°）╯︵ ┻━┻ : undefined method `call_nonexistant_method' for nil:NilClass"
      expect { test.no_method_error }.to raise_error(NoMethodError, msg)
    end

    it "works with NameError" do
      msg = "(╯°□°）╯︵ ┻━┻ : undefined local variable or method " +
            "`undefined_variable' for <JenkinsTest>:JenkinsTest"
      expect { test.name_error }.to raise_error(NameError, msg)
    end

    it "works with RuntimeError" do
      msg =  "(╯°□°）╯︵ ┻━┻ : can't modify frozen Array"
      expect { test.runtime_error }.to raise_error(RuntimeError, msg)
    end

    it "works with CustomError" do
      msg =  "(╯°□°）╯︵ ┻━┻ : This is a custom error"
      expect { test.custom_error }.to raise_error(CustomError, msg)
    end

    it "fails" do
      expect(true).to be_falsy
    end
  end
end
