class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.0"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.0/garden-0.14.0-macos-arm64.tar.gz"
    sha256 "95e8224d70cfd43f6a1138882901a48d6981391e1ce9ea70ee8f44b19303d61d"
  else
    url "https://download.garden.io/core/0.14.0/garden-0.14.0-macos-amd64.tar.gz"
    sha256 "4c016195d9498138f402ebb744b23885c33e9a83f1a9dcdec8787d86f594f7eb"
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
