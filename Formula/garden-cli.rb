class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.6/garden-v0.10.6-macos-amd64.tar.gz"
  version "0.10.6"
  sha256 "657c160fa269f1a8c265e1c5af7d3f801984c3f60d3b4f687ea9365f3b7ae7fc"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
