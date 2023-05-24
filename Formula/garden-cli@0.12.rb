class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.56/garden-0.12.56-macos-amd64.tar.gz"
  version "0.12.56"
  sha256 "20104836cac2b300bb1b1055fce019af7d9468132c9cb074d3d196fe69c706fe"

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
