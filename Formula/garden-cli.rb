class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.46/garden-0.12.46-macos-amd64.tar.gz"
  version "0.12.46"
  sha256 "7c1b1d8642779d2433934d847e929fe6bd5711446ae432fa2dc5048b3a8ee5f4"

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
