class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.10"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.10/garden-0.14.10-macos-arm64.tar.gz"
    sha256 "1b4dade2ce79a37cd657c9b53b3a01f778fc37dde7970746a9a4046cf918affe"
  else
    url "https://download.garden.io/core/0.14.10/garden-0.14.10-macos-amd64.tar.gz"
    sha256 "c472afb4960570b6db4fc265ffa9b2bde5b96147bb6b5ad831a86e56c3ab710e"
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
