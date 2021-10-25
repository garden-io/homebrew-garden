class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.28/garden-0.12.28-macos-amd64.tar.gz"
  version "0.12.28"
  sha256 "8b72368d036c0be9866234270321df0a39cf6728ee4fd561a86d8f3fbab3a316"

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
