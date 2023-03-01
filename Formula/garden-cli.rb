class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.52/garden-0.12.52-macos-amd64.tar.gz"
  version "0.12.52"
  sha256 "00c37a50ad1f1316029e36f290fd576702a10cbbb5fa44ba1078148050149248"

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
