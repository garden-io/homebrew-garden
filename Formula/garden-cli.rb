class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.56"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.56/garden-0.13.56-macos-arm64.tar.gz"
    sha256 "857adb0153eb23a615511abb02678f88d0528ad189d7eb8ac91a9eb809515c00"
  else
    url "https://download.garden.io/core/0.13.56/garden-0.13.56-macos-amd64.tar.gz"
    sha256 "c95e4437beb9e3cbd5ab95e7fce587a6a008e1ea2badde52c469d288f3ca04bb"
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
