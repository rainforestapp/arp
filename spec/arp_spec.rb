require 'spec_helper' 

describe Arp::Cache do
  let(:file) { File.join(__dir__, "test_files/arp") }
  subject { described_class.new(file) }

  describe "#size" do
    subject { super().size }
    it { should == 5 }
  end

  describe "#each" do
    it "yields once for each line" do
      i = 0
      subject.each do |obj|
        i += 1
      end
      i.should == 5
    end
  end

  describe "collection elements" do
    subject { super().collection.first }

    its(:ip) { should == "192.168.124.2" }
    its(:hw_type) { should == "0x1" }
    its(:flags) { should == "0x2" }
    its(:hw_address) { should == "00:50:56:e9:27:c7" }
    its(:mask) { should == "*" }
    its(:device) { should == "eth0" }
  end

  describe "#initialize" do
    let(:file) { "does not exist" }

    it "raises an exception on non existant path" do
      expect do 
        subject
      end.to raise_error(ArgumentError)
    end
  end
end
