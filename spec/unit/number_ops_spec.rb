require_relative '../../ruby_samples/number_ops.rb'
require 'simplecov'
require 'simplecov-rcov'
SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
SimpleCov.start

describe NumberOps do
  number_ops = NumberOps.new

  describe "#to_zero" do
    it "returns zero" do
      expected = 0
      input_num = 31
      expect(number_ops.to_zero(input_num)).to eq(expected)
    end
  end

  describe "#add_nums" do
    it "returns sum of two numbers" do
      expected = 10
      input_num_1 = 2
      input_num_2 = 8
      expect(number_ops.add_nums(input_num_1, input_num_2)).to eq(expected)
    end
  end
end
