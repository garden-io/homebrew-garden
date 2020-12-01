class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.11/garden-0.12.11-macos-amd64.tar.gz"
  version "0.12.11"
  sha256 "a09351431e082d1aea2265988058d403b8daec0c9748c98982db99bfabfbb2d8"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "better_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
