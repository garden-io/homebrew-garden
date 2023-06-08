class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.59/garden-0.12.59-macos-amd64.tar.gz"
  version "0.12.59"
  sha256 "697e8391c7d8440cd5aee2db3de46a83d38f060fdaec82c058c98153260e060a"

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
