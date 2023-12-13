class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.67/garden-0.12.67-macos-amd64.tar.gz"
  version "0.12.67"
  sha256 "c89734781cac79df2ee6d3729177bcb712ceae6f0b731eceddcb8e0133f4e3f4"

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
