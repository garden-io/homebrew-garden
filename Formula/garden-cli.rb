class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.51"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.51/garden-0.13.51-macos-arm64.tar.gz"
    sha256 "8bff8bed25869e96dc2eadfcb96060c4996bf37d2bffa651a0470587e315dc3a"
  else
    url "https://download.garden.io/core/0.13.51/garden-0.13.51-macos-amd64.tar.gz"
    sha256 "4e31831ccec53cecd2fbed33329c49dfe7946d450a033c69a5baef3aee36ad74"
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
