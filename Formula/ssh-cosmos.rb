
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.6.tar.gz'
  sha256 'bfd890d5361f4ef02adbbe42203cfa3433dbbe1250d10d426037393f1e9e4401'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
