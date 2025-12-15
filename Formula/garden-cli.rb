class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.13"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.13/garden-0.14.13-macos-arm64.tar.gz"
    sha256 "323b4b92e006afaed2cb8c9a9e42c26134715f73264257f946026b1309ed49b2"
  else
    url "https://download.garden.io/core/0.14.13/garden-0.14.13-macos-amd64.tar.gz"
    sha256 "648505df0b5253f6d3ea1eb32e597a0482cfd8b7c0e734d604117cb2b6afd407"
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
