# Question: #{Theme}
#
# http://nabetani.sakura.ne.jp/hena/#{question}
#
# Usage: bundle exec rspec example.rb
#
require 'bundler'

Bundler.require

class Example
  def result(name)
    "hello, #{name}"
  end
end

describe Example do
  let(:example) { Example.new }

  describe '#result' do
    let(:input)  { 'world' }
    let(:output) { 'hello, world' }

    subject { example.result(input) }

    it { is_expected.to eq output }
  end
end
