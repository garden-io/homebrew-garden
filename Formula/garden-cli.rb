class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.34/garden-0.12.34-macos-amd64.tar.gz"
  version "0.12.34"
  sha256 "812cc14faf50c5bd254ce7a480e4a303555d07e11f6ee9dd8b372ffa6fc217ff"

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
