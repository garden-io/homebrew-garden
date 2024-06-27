class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.33"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.33/garden-0.13.33-macos-arm64.tar.gz"
    sha256 "42d67d86d71e42ba90b046fcb10a61060fe6881c4fd1b2a482bafadf472cb7f5"
  else
    url "https://download.garden.io/core/0.13.33/garden-0.13.33-macos-amd64.tar.gz"
    sha256 "601010d6b9e100f4c3860ab80502d329a3cec85124a31e5fea90cddbb416c7ac"
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
