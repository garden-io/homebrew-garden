class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.9/garden-0.12.9-macos-amd64.tar.gz"
  version "0.12.9"
  sha256 "71522e0472e5d8f0edbd522c90f1382ff9b6be16849afcab5525f9232b699fb9"

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
