class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.21"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.21/garden-0.13.21-macos-arm64.tar.gz"
    sha256 "f1bb844402db60af1360b7d471f9864ebae81ddaf01457c4b7b21388d7f8a59b"
  else
    url "https://download.garden.io/core/0.13.21/garden-0.13.21-macos-amd64.tar.gz"
    sha256 "d23e9456968603489e62f6f56825f858caa5108bdc431c1f3fd270c2e20f3478"
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
