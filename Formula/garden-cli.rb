class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.33/garden-0.12.33-macos-amd64.tar.gz"
  version "0.12.33"
  sha256 "7d0f2baef164ce679d81e7c34d8157cf87415f01df491092c8289608d41cf179"

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
