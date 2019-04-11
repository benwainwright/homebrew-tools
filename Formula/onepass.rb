# Homebrew formula to install 1pass, the 1password CLI
# caching wrapper
class Onepass < Formula
  desc '1Password CLI caching wrapper'
  homepage 'https://github.com/dcreemer/1pass'
  url 'https://raw.githubusercontent.com/dcreemer/1pass/master/1pass'
  version '1.0.1'
  sha256 'f8331a56ec438f52f61109485766acf002f1c0b089dd8a030bdcc29fe32e9f52'
  depends_on 'op'
  depends_on 'jq'

  def install
    bin.install '1pass'
  end
end
