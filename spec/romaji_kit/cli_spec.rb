# coding: utf-8

require 'spec_helper'

describe RomajiKit::CLI do
  let(:cli) { described_class.new }

  describe '#hepburnize' do
    context 'given no options' do
      subject { lambda { cli.hepburnize('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { lambda { cli.invoke(:hepburnize, ['かな'], { upcase: true }) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end
  end

  describe '#nihon' do
    context 'given no options' do
      subject { lambda { cli.nihon('かな') } }
      it { is_expected.to output("kana\n").to_stdout }
    end

    context 'given --upcase option' do
      subject { lambda { cli.invoke(:nihon, ['かな'], { upcase: true }) } }
      it { is_expected.to output("KANA\n").to_stdout }
    end
  end

  describe '#version' do
    subject { lambda { cli.version } }
    it { is_expected.to output("romaji_kit #{RomajiKit::VERSION}\n").to_stdout }
  end
end
