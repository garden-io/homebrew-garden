class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.50/garden-0.12.50-macos-amd64.tar.gz"
  version "0.12.50"
  sha256 "8854274d087f97b9bc8a1e6ecfb666f5a06c7b9913578861593f79d21db3c332"

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
