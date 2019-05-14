
class SshCosmos < Formula
  desc 'SSH wrapper for cosmos instances'
  url 'https://github.com/benwainwright/ssh-cosmos/archive/0.0.12.tar.gz'
  sha256 'f0cb06e43ef51844c453840e4cb596b4c60f65521c590a030db42fcfc12a7c40'

  depends_on 'jq'

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "ssh-cosmos"
    bin.install_symlink "#{prefix}/ssh-cosmos"
  end
end
