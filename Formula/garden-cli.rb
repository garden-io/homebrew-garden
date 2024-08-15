class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.38"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.38/garden-0.13.38-macos-arm64.tar.gz"
    sha256 "427f476d59c62c69341a59f5aa952010e282db0837c3994c84f6acba5780294b"
  else
    url "https://download.garden.io/core/0.13.38/garden-0.13.38-macos-amd64.tar.gz"
    sha256 "7c8f1fc3346b74210553f4e60f1f6df75ffb95a865263d1b87991ae7c36aa9af"
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
