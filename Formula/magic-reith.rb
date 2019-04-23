class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.23.tar.gz'
  sha256 '34486541499d133270c4a1c88accb51432335a54b2b4a4f00ca148ab00b1127c'

  plist_options :startup => true

  depends_on "coreutils"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>LowPriorityIO</key>
    <true />
    <key>Environmentvariables</key>
    <dict>
      <key>PATH</key>
      <string>#{ENV['PATH']}:/usr/local/bin</string>
    </dict>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/bin/reith</string>
      <string>on-network-change</string>
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
    <string>/tmp/magic-reith-error.log</string>
    <key>StandardOutPath</key>
    <string>/tmp/magic-reith.log</string>
    <key>ThrottleInterval</key>
    <integer>5</integer>
  </dict>
  </plist>
  EOS
  end

  def install
    libexec.install Dir["libexec/*"]
    prefix.install "reith"
    bin.install_symlink "#{prefix}/reith"
  end
end
