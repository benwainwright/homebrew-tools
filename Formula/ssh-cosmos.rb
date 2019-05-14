
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.0.tar.gz'
  sha256 '27d53a2e7a8ca2a481cc64d6ea465a904e6f85436c1f1044ce3e1d0bbdf2e6f1'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
