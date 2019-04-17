class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.1.tar.gz'
  sha256 'b17f40e0212783502f4b052f155b5f3a0287fd64cb79112aa310a52f500c7b81'

  def install
    bin.install 'reith'
  end
end
