class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.11/garden-v0.9.11-macos-amd64.tar.gz"
  version "0.9.11"
  sha256 "b086da9251eabc32bb6d3df36b5c2da831245994943874904070f19aaa0f4276"

  depends_on "rsync"

  def install
    libexec.install "garden", "fse.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
