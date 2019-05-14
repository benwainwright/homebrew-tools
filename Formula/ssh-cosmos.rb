
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.0.tar.gz'
  sha256 '94233f9ea31a41be90310453babdb82de3e2da0c46299b8189a28115bb3bcdb8'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
