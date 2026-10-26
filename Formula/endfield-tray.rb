class EndfieldTray < Formula
  desc "Compact Endfield-inspired floating taskbar for KDE Plasma 6 Wayland"
  homepage "https://github.com/hhdtc/EndfieldTray"
  url "https://github.com/hhdtc/EndfieldTray/releases/download/v0.1.2/endfield-tray-v0.1.2-x86_64-linux.tar.gz"
  sha256 "b5a235b771e6908c4f2472b3e0b1316977caa9dc10a2a3cfd5e3e38a22ead49e"
  license "MIT"
  version "0.1.2"

  def install
    bin.install "endfield-tray"
    bin.install "endfield-plasma-panel"
    (share/"icons/hicolor/scalable/apps").install "endfield-tray.svg"
    doc.install "README.md"
    prefix.install "LICENSE"
  end

  def caveats
    <<~EOS
      Endfield Tray uses the system Qt 6, KDE Plasma, NetworkManager,
      PipeWire and BlueZ. On Arch/CachyOS install:

        sudo pacman -S qt6-base qt6-declarative qt6-wayland layer-shell-qt plasma-workspace networkmanager pipewire wireplumber bluez-utils

      Enable start at KDE login with:

        endfield-tray --autostart enable

      Check it with:

        endfield-tray --autostart status
    EOS
  end

  test do
    assert_match "Autostart:", shell_output("#{bin}/endfield-tray --autostart status 2>&1")
  end
end
