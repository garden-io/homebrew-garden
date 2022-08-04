class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.44/garden-0.12.44-macos-amd64.tar.gz"
  version "0.12.44"
  sha256 "e7768c4d749965aa1354f44261af85e1fd5aeabb2f67b1604ac1e5e6eab57cca"

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
