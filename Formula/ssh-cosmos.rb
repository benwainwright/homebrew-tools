
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.10.tar.gz'
  sha256 '4ee2f72cb65c85ea2fbb44f80db1900d4539c574fee6a9252166b426da5f3b68'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
