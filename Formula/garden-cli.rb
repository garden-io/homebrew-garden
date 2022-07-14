class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.43/garden-0.12.43-macos-amd64.tar.gz"
  version "0.12.43"
  sha256 "ed7ffbb26acaa4fa852fd60137559fd532c5921557e31747b35a2f45618f4845"

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
