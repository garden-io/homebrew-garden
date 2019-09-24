class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.11/garden-v0.10.11-macos-amd64.tar.gz"
  version "0.10.11"
  sha256 "97e31e3da5f08a54edf73a0e4f49b219c9c983bbca7986b3d311b27a50243fea"

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
