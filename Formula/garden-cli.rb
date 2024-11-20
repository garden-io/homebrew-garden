class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.44"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.44/garden-0.13.44-macos-arm64.tar.gz"
    sha256 "770196c88fae1cbb3539b319211c6f3e5d5041520d36133566487b81068e284e"
  else
    url "https://download.garden.io/core/0.13.44/garden-0.13.44-macos-amd64.tar.gz"
    sha256 "1cde6a80d712fdda5771cff4c19284ce681734bb0b937a8517ec81bfaeb70ccc"
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
