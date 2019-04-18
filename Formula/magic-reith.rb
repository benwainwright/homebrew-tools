class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.5.tar.gz'
  sha256 '5ad5a0eab88a9a81c3a44ed9003754c7cf249a76ea6d9861a223759ec07e443e'

  plist_options :startup => true

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>Label</key>
  </dict>
  </plist>
  EOS
  end

  def install
    lib.install Dir["lib/*.sh"]
    bin.install_symlink "#{prefix}/reith"
  end
end
