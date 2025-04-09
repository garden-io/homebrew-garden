class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.58"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.58/garden-0.13.58-macos-arm64.tar.gz"
    sha256 "9ee606b4f2ca943f3e294cb673c190d961b20408e96c3a43f6a1e8540df171ef"
  else
    url "https://download.garden.io/core/0.13.58/garden-0.13.58-macos-amd64.tar.gz"
    sha256 "dc5fcde30572e60b597483e3ae77ee04af2a84e5dd93cda7e087aa7c5c6d04ad"
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
