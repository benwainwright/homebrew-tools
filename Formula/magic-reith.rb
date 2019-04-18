class MagicReith < Formula
  desc 'Simply the BBC corporate proxy'
  url 'https://github.com/benwainwright/magic-reith/archive/0.0.2.tar.gz'
  sha256 '07731fcdcd7bb44cbdd5a49debd21dea45488e67dc6fdfb3198fe54f331932d9'

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
