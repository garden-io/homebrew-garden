class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.13/garden-v0.11.13-macos-amd64.tar.gz"
  version "0.11.13"
  sha256 "777e3e172dd17e7bf4be3368df8218be4c50beb833b95bcfc7122b1eb7ab3c1d"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "node_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
