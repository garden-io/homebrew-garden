class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.5/garden-0.12.5-macos-amd64.tar.gz"
  version "0.12.5"
  sha256 "c044d2948ca3889aabf17cd4e12729a7840a73d59c6b41255ff8db6e69ebcaa2"

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
