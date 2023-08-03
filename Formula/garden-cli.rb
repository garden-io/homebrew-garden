class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.10/garden-0.13.10-macos-amd64.tar.gz"
  version "0.13.10"
  sha256 "86ee0b1e8f94ed956c679c3ae1384f4ea99bc16faeeacc4491b6fbdc319d99c7"

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
