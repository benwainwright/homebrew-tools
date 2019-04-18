class PythonLanguageServer < Formula
  desc "An implementation of the Language Server Protocol for Python"
  homepage "https://github.com/palantir/python-language-server"
  url "https://github.com/palantir/python-language-server/archive/0.25.0.tar.gz"
  sha256 "83426d79894ee778d2bce7d3e44e09cf0e7616915138931bc9fa1eaca73c2c7e"
  version "0.25.0"

  plist_options :startup => true

  depends_on "python"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>ProgramArguments</key>
    <key>EnvironmentVariables</key>
    <string>#{ENV["PATH"]}:/usr/local/bin</string>
    <array>
      <string>/usr/local/bin/pyls</string>
      <string>--tcp</string>
      <string>--port</string>
      <string>2090</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>StandardErrorPath</key>
    <string>/tmp/pyls.stderr</string>
    <key>StandardOutPath</key>
    <string>/tmp/pyls.stdout</string>
  </dict>
  </plist>
  EOS
  end

  include Language::Python::Virtualenv

  resource "configparser" do
    url "https://files.pythonhosted.org/packages/7c/69/c2ce7e91c89dc073eb1aa74c0621c3eefbffe8216b3f9af9d3885265c01c/configparser-3.5.0.tar.gz"
    sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/96/fb/e99fc0442f8a0fa4bf5d34162c2d98131489017f661bf8a331857844b145/jedi-0.13.3.tar.gz"
    sha256 "2bb0603e3506f708e792c7f4ad8fc2a7a9d9c2d292a358fbbd58da531695595b"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/46/31/60de7c9cbb97cac56b193a5b61a1fd4d21df84843a570b370ec34781316b/parso-0.3.1.tar.gz"
    sha256 "35704a43a3c113cce4de228ddb39aab374b8004f4f2407d070b6a2ca784ce8a2"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/a1/83/ef7d976c12d67a5c7a5bc2a47f0501c926cabae9d9fcfdc26d72abc9ba15/pluggy-0.7.1.tar.gz"
    sha256 "95eb8364a4708392bae89035f45341871286a333f749c3141c20573d2b3876e1"
  end

  resource "python-jsonrpc-server" do
    url "https://files.pythonhosted.org/packages/5a/b4/08d7ff047bb83f9f3549fe34c0f0db917c79020e419426a55cedcf404730/python-jsonrpc-server-0.1.2.tar.gz"
    sha256 "09b418e3b1ba9032aecc7aefdd185511dd230fb8dacf18ec195d14dfd89d9e54"
  end

  resource "python-language-server" do
    url "https://files.pythonhosted.org/packages/92/51/0b4e3b1457d8be857661ae705c41a323e0c605ebf98b7a6e0d8bcefbf772/python-language-server-0.25.0.tar.gz"
    sha256 "01f4b6273b62cc74cfb107a9c2123b57e43d8617b4d7c1b2afe258d2b0b24bf5"
  end

  resource "autopep8" do
    url "https://files.pythonhosted.org/packages/5b/ba/37d30e4263c51ee5a655118ac8c331e96a4e45fd4cea876a74b87af9ffc1/autopep8-1.4.3.tar.gz"
    sha256 "33d2b5325b7e1afb4240814fe982eea3a92ebea712869bfd08b3c0393404248c"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz"
    sha256 "e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "pycodestyle" do
    url "https://files.pythonhosted.org/packages/1c/d1/41294da5915f4cae7f4b388cea6c2cd0d6cd53039788635f6875dfe8c72f/pycodestyle-2.5.0.tar.gz"
    sha256 "e40a936c9a450ad81df37f549d676d127b1b66000a6c500caa2b085bc0ca976c"
  end

  resource "pydocstyle" do
    url "https://files.pythonhosted.org/packages/e1/e6/a0669df17a97e462915a10a7d6c567658b60eceddebf62a3fb9975c00196/pydocstyle-3.0.0.tar.gz"
    sha256 "5741c85e408f9e0ddf873611085e819b809fca90b619f5fd7f34bd4959da3dd4"
  end

  resource "pylint" do
    url "https://files.pythonhosted.org/packages/01/8b/538911c0ebc2529f15004f4cb07e3ca562bb9aacea5df89cc25b62e01891/pylint-2.3.1.tar.gz"
    sha256 "723e3db49555abaf9bf79dc474c6b9e2935ad82230b10c1138a71ea41ac0fff1"
  end

  resource "rope" do
    url "https://files.pythonhosted.org/packages/af/9b/e92c1d561631da9fbeaf4d5d67ecb65b7d284a63069ee37aec44a2eefae4/rope-0.12.0.tar.gz"
    sha256 "031eb54b3eeec89f4304ede816995ed2b93a21e6fba16bd02aff10a0d6c257b7"
  end

  resource "yapf" do
    url "https://files.pythonhosted.org/packages/bb/4b/8fa6470611f69c9a3c600e73b0901849e95e0419e0e9d91f99b9568a033f/yapf-0.26.0.tar.gz"
    sha256 "edb47be90a56ca6f3075fe24f119a22225fbd62c66777b5d3916a7e9e793891b"
  end

  def install
    virtualenv_install_with_resources
    bin.install_symlink "#{libexec}/bin/pyls"
  end

end
