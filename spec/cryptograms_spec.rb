require 'spec_helper'

describe Cryptograms do
  subject { Cryptogram.new "foo" }

  it 'has a version number' do
    expect(Cryptograms::VERSION).not_to be nil
  end

  it { is_expected.to respond_to :plaintext  }
  it { is_expected.to respond_to :cyphertext }

  it "stores plaintext" do
    expect(subject.plaintext).to eq "FOO"
  end

  it "stores cyphertext" do
    expect(subject.cyphertext).not_to eq "FOO"
  end

  it "stores plaintext in uppercase" do
    expect(subject.plaintext).to match /^\p{Upper}+$/
  end

  it "stores cyphertext in uppercase" do
    expect(subject.cyphertext).to match /^\p{Upper}+$/
  end
end
