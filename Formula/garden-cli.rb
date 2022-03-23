class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.37/garden-0.12.37-macos-amd64.tar.gz"
  version "0.12.37"
  sha256 "c024b2be728f972e6461998f1396a90e727ba86c8e0c3c27259d301400aee276"

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
