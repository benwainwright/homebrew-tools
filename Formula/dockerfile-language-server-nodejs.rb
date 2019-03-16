require "language/node"

class DockerfileLanguageServerNodejs < Formula
  version "0.0.20"
  desc "Language server for Dockerfiles powered by NodeJS, TypeScript, and VSCode technologies."
  homepage "https://github.com/rcjsuen/dockerfile-language-server-nodejs"
  url "https://registry.npmjs.org/dockerfile-language-server-nodejs/-/dockerfile-language-server-nodejs-0.0.20.tgz"
  sha256 "a0a2fbbc1f18f20c6c543e3e1ebd87ec378e8974435c1b17db0c83cec8a02e31"
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  plist_options :startup => true

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
          <string>/usr/local/bin/docker-langserver</string>
          <string>--socket=2091</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>StandardErrorPath</key>
      <string>/tmp/dockerfile-langserver.stderr</string>
      <key>StandardOutPath</key>
      <string>/tmp/dockerfile-langserver.stdout</string>
  </dict>
  </plist>
  EOS
  end

end
