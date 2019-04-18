class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.1.tar.gz'
  sha256 'b17f40e0212783502f4b052f155b5f3a0287fd64cb79112aa310a52f500c7b81'

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
    bin.install_symlink "reith"
  end
end
