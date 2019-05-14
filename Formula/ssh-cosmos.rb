
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.0.tar.gz'
  sha256 'fa0dda4d8da29ff88254f48d516ec10bcfde044c6dc596a8e923f8e76edd457b'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
