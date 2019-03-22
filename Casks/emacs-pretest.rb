cask 'emacs-pretest' do
  version '26.2-rc1'
  sha256 'dab0f3362e719fd31dbbd7bece80ce89523b5ba25848ac157c2fa9b478991c67'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"
  appcast 'https://emacsformacosx.com/atom/pretest'
  name 'Emacs'
  homepage 'https://emacsformacosx.com/'

  app 'Emacs.app'
end
