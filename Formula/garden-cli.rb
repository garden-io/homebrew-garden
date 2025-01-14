class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.49"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.49/garden-0.13.49-macos-arm64.tar.gz"
    sha256 "085d83f1856b419fcdaa7b673bd46e2cad2051faca9fea7503d1d95ca4bb7c8f"
  else
    url "https://download.garden.io/core/0.13.49/garden-0.13.49-macos-amd64.tar.gz"
    sha256 "c033c1d301d4cdfaae6b3a6e42f8d96f5bc69c3751dbe7940ada0420fbd3e532"
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
