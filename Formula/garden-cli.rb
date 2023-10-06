class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.17"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.17/garden-0.13.17-macos-arm64.tar.gz"
    sha256 "f506700d56b5613c7f24356347a5ba7d0d3d5e6d8e67f281a499d08520eabf7f"
  else
    url "https://download.garden.io/core/0.13.17/garden-0.13.17-macos-amd64.tar.gz"
    sha256 "58b12aec6ce83e77f50e262f5d56abe7d99ef8792d45430fc55813c3c58dd158"
  end

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
