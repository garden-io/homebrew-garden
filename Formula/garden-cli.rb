class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.14"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.14/garden-0.14.14-macos-arm64.tar.gz"
    sha256 "4a191f2f64d749463b10ce99bb0d604965385704edd70223db5b859eb4bf3665"
  else
    url "https://download.garden.io/core/0.14.14/garden-0.14.14-macos-amd64.tar.gz"
    sha256 "ff8f61207e2eefd17cbe9bd9a9c5a0323882f054957051969d8b3102f0e068ff"
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
