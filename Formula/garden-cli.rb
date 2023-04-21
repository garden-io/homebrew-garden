class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.54/garden-0.12.54-macos-amd64.tar.gz"
  version "0.12.54"
  sha256 "7008da1051a2d7edd531a18dc56d8f08941754ced7c3bde736ee09a40f22b36e"

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
