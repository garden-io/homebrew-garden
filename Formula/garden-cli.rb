class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.23/garden-0.12.23-macos-amd64.tar.gz"
  version "0.12.23"
  sha256 "873d507468007b98ada67c5b400eb7d668fdb6ad8f2cea795a18f774e3a9d5e1"

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
