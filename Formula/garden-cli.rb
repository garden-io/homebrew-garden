class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.32/garden-0.12.32-macos-amd64.tar.gz"
  version "0.12.32"
  sha256 "dce792e11497f167f8badf8407402256cfaceddb7fc88499199b8a4e339e45a6"

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
