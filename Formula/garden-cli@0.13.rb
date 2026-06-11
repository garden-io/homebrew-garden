class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.64"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.64/garden-0.13.64-macos-arm64.tar.gz"
    sha256 "5e071067392f608f6396a7cafb9d549914f455ec20046f989ca45d4729d09a4a"
  else
    url "https://download.garden.io/core/0.13.64/garden-0.13.64-macos-amd64.tar.gz"
    sha256 "40877cdc2ba4a1d6749015130d34e3a257f4c31178cdb32ee172c1e1ac263b33"
  end

  def install
    libexec.install "garden"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
