require "check_grammar"

RSpec.describe "check_grammar method" do
  context "text has correct structure" do
    it "returns compliance message" do
      expect(check_grammar("Hello world!")).to eq "Starts with a captial letter and ends with suitable puctuation."
    end
  end

  context "no text input" do
    it "returns no text message" do
      expect(check_grammar("")).to eq "There is no text to check."
    end
  end
end