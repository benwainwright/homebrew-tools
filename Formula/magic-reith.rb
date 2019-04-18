class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.8.tar.gz'
  sha256 '21182b3f241c47080bd6cca724c7d0fcab83e49c27b37cbceb7e05b62ede1e57'

  plist_options :startup => true

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>LowPriorityIO</key>
    <true />
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
    <key>StandardErrorPath</key>
    <string>/var/log/magic-reith-error.log</string>
    <key>StandardOutPath</key>
    <string>/var/log/magic-reith.log</string>

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
