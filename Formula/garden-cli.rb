class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.7/garden-v0.10.7-macos-amd64.tar.gz"
  version "0.10.7"
  sha256 "0515e46b66a75ed1c0fa6a111bd6633b0418585a349074fd41cb5477b2d8449c"

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
