class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.10/garden-0.12.10-macos-amd64.tar.gz"
  version "0.12.10"
  sha256 "4566bd00f45bfa56844fed5b06539a9e20924578943d3110ae4f77e70d74d96e"

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
