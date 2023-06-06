class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.57/garden-0.12.57-macos-amd64.tar.gz"
  version "0.12.57"
  sha256 "e4600a1b5de070b4e8619e7f9ee7fa4e831d9155e844ecac5b08a9a9b540ccd4"

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
