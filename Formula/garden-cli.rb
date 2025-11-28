class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.11"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.11/garden-0.14.11-macos-arm64.tar.gz"
    sha256 "60a9ad4f092653a9603fe755f3dbcc7e15935ea9367fa9e574a67d9e6a52bf4b"
  else
    url "https://download.garden.io/core/0.14.11/garden-0.14.11-macos-amd64.tar.gz"
    sha256 "25ae6a0d907527bf21c43252f48fea17cd21d288d07af12c0f275e0651b0fc64"
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
