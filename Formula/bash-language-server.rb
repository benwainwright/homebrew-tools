class BashLanguageServer < Formula
  desc "language server for Bash"
  homepage "https://github.com/mads-hartmann/bash-language-server"
  url "https://registry.npmjs.org/bash-language-server/-/bash-language-server-1.5.5.tgz"
  sha256 "3ecc8b0d8529bb1f2db06eaa7f47ff3846065fe439ee35e458bbd106a8f09abd"
  depends_on "node"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
          <string>/usr/local/bin/node</string>
          <string>/usr/local/bin/bash-language-server</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>StandardErrorPath</key>
      <string>/tmp/bash-language-server.stderr</string>
      <key>StandardOutPath</key>
      <string>/tmp/bash-language-server.stdout</string>
  </dict>
  </plist>
  EOS
  end


  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
