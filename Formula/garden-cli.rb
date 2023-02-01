class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/edge/garden-edge-macos-amd64.tar.gz"
  version "edge"
  sha256 "ab264e0332a575bbdcdf4ee8456dba4b7f3e7c5cddd681e8bb1da5b0f2919b6a"

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
