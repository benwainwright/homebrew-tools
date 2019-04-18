class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.6.tar.gz'
  sha256 'b1de97040870993bb759a8e1117ca38cfafc0c6c3d82f47952c4ccebac76cf26'

  plist_options :startup => true

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>Label</key>
    <string>magic-reith</string>
    <key>LowPriorityIO</key>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/bin/reith</string>
      <string>onnetworkchange</string>
    </array>
    <key>WatchPaths</key>
    <array>
      <string>/etc/resolv.conf</string>
      <string>/var/run/resolv.conf</string>
      <string>/private/var/run/resolv.conf</string>
      <string>/Library/Preferences/SystemConfiguration/NetworkInterfaces.plist</string>
      <string>/Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist</string>
    </array>
    <key>RunAtLoad</key>
    <true />
  </dict>
  </plist>
  EOS
  end

  def install
    libexec.install Dir["libexec/*.sh"]
    prefix.install "reith"
    bin.install_symlink "#{prefix}/reith"
  end
end
