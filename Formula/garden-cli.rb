class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.47/garden-0.12.47-macos-amd64.tar.gz"
  version "0.12.47"
  sha256 "b5c221f39c9e59bb0c5a0a89a49251535199442dc3b9261fd97319baef725591"

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
