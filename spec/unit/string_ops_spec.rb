require_relative '../../ruby_samples/string_ops.rb'
require 'simplecov'
require 'simplecov-rcov'
SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
SimpleCov.start

describe StringOps do
  string_ops = StringOps.new
  input_string = "To see a World in a Grain of Sand, And a Heaven in a Wild Flower, Hold Infinity in the palm of your hand, And Eternity in an hour."

  describe "#to_upper" do
    it "returns upper case for input_string" do
      expected_string = "TO SEE A WORLD IN A GRAIN OF SAND, AND A HEAVEN IN A WILD FLOWER, HOLD INFINITY IN THE PALM OF YOUR HAND, AND ETERNITY IN AN HOUR."
      expect(string_ops.to_upper(input_string)).to eq(expected_string)
    end
  end

  describe "#to_lower" do
    it "returns lower case for input_string" do
      expected_string = "to see a world in a grain of sand, and a heaven in a wild flower, hold infinity in the palm of your hand, and eternity in an hour."
      expect(string_ops.to_lower(input_string)).to eq(expected_string)
    end
  end

  describe "#to_empty" do
    it "returns empty string" do
      expected_string = ""
      expect(string_ops.to_empty(input_string)).to eq(expected_string)
    end
  end

  describe "#reverse" do
    it "returns the reversed string" do
      input_string = "input"
      expected_string = "tupni"
      expect(string_ops.reverse(input_string)).to eq(expected_string)
    end
  end

  describe "#to_eric" do
    it "returns Eric" do
      expected_string = "Eric"
      expect(string_ops.to_eric(input_string)).to eq(expected_string)
    end
  end

  describe "#to_larry" do
    it "returns Larry" do
      expected_string = "Larry"
      expect(string_ops.to_larry(input_string)).to eq(expected_string)
    end
  end

end
