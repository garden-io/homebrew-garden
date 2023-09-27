class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.15"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.15/garden-0.13.15-macos-arm64.tar.gz"
    sha256 "6f7498de9d4c639df17c8f2d80e290eddf29fb07a166ef44eb32e285a8e16498"
  else
    url "https://download.garden.io/core/0.13.15/garden-0.13.15-macos-amd64.tar.gz"
    sha256 "078ae03edc8e35400310e8636f77eeaa619883a07e1328eb3b74b8233c0cfca1"
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
