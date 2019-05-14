
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.0.tar.gz'
  sha256 '576e3567bbd4678dac38ad352da14e60d13f6c3dd5d229206223eb2f81d0d83a'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
