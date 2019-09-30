class Call < Formula
  desc 'Bootstrapping API calls'
  homepage 'https://github.com/benwainwright/call'
  url 'https://github.com/benwainwright/call'
  sha256 ""
  depends_on "python"

  def install
    virtualenv_install_with_resources
  end
end
