class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.3.tar.gz'
  sha256 'f37fb06ff5bd39e1a27974261dbb589db5e7d3012bad1332ba33bd139110dbe2'

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
    prefix.install "reith"
    bin.install_symlink "#{prefix}/reith"
  end
end
