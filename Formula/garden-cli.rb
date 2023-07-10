class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.7/garden-0.13.7-macos-amd64.tar.gz"
  version "0.13.7"
  sha256 "c51e5ceb487ffee9a43f73b08d0d8abfefca7cedcff959b9413204d433ae2ba7"

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
