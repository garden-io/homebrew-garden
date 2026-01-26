class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.15"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.15/garden-0.14.15-macos-arm64.tar.gz"
    sha256 "8f17b5da0a1e36ae2608c52798bfe15556d9a0ea9c6ebfe06a454cb172c0030b"
  else
    url "https://download.garden.io/core/0.14.15/garden-0.14.15-macos-amd64.tar.gz"
    sha256 "72c9943858421931010d7afea14e6faca9ada49973478efd41aa0f2e58d9fe42"
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
