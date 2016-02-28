# Question: #{Theme}
#
# http://nabetani.sakura.ne.jp/hena/#{question}
#
require 'bundler'

Bundler.require

class Example
  def greet(name)
    "hello, #{name}"
  end
end

describe Example do
  let(:example) { Example.new }

  describe '#greet' do
    let(:input)  { 'world' }
    let(:output) { 'hello, world' }

    subject { example.greet(input) }

    it { is_expected.to eq output }
  end
end
