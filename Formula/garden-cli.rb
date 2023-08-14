class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.11/garden-0.13.11-macos-amd64.tar.gz"
  version "0.13.11"
  sha256 "a06bb0a187101cb68bcc55e7e163c4e13b60164cb89f9465bb747451fb4f662b"

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
