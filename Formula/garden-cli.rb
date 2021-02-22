class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.17/garden-0.12.17-macos-amd64.tar.gz"
  version "0.12.17"
  sha256 "0ff624b4b8f46eec6c5923dd59c301f80ddb4021639564bb919e90048d71baa9"

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
