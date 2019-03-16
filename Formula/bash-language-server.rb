class BashLanguageServer < Formula
  desc "language server for Bash"
  homepage "https://github.com/mads-hartmann/bash-language-server"
  url "https://registry.npmjs.org/bash-language-server/-/bash-language-server-1.5.5.tgz"
  sha256 "3ecc8b0d8529bb1f2db06eaa7f47ff3846065fe439ee35e458bbd106a8f09abd"
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
