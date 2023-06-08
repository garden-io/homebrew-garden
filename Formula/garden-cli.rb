class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.2/garden-0.13.2-macos-amd64.tar.gz"
  version "0.13.2"
  sha256 "63bf03d36def5dd94bae94037de4aa799d3374cedd5a436ceb4223d7ce2d9598"

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
