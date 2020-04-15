class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.12/garden-v0.11.12-macos-amd64.tar.gz"
  version "0.11.12"
  sha256 "5fd7aad4f62d4266b8e12a23c696a442405df0960ff2b96192882e8cb41be397"

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
