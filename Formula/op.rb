# Homebrew formula to install the 1Password CLI
class OnePasswordCli < Formula
  desc '1Password CLI'
  homepage 'https://app-updates.agilebits.com/product_history/CLI'
  url 'https://cache.agilebits.com/dist/1P/op/pkg/v0.5.5/op_darwin_amd64_v0.5.5.zip'
  version '0.5.5'
  sha256 '6be2ef438967ced35e510c5a2e2323801b2f5c81aec839bcfe24cb96dffff1d1'

  def install
    bin.install 'op'
  end
end
