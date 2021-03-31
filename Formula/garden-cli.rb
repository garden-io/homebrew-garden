class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.20/garden-0.12.20-macos-amd64.tar.gz"
  version "0.12.20"
  sha256 "c732bcfb509f9ee90722faacb36fadef902d4ad7524585379165d363214b7ef4"

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
