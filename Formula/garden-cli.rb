class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.22"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.22/garden-0.13.22-macos-arm64.tar.gz"
    sha256 "5b350b1d4ae25fb8d9b5b5a184f14b06dc8c5d50105a4a4c851f04d2012c8cad"
  else
    url "https://download.garden.io/core/0.13.22/garden-0.13.22-macos-amd64.tar.gz"
    sha256 "2a6442195920088358501ae72b5c2c248f4818445bd1699141668bae8cbe0d6e"
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
