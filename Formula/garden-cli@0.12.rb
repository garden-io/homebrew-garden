class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.65/garden-0.12.65-macos-amd64.tar.gz"
  version "0.12.65"
  sha256 "e8e56e2706d71fc238234b50de9afd554fffa77e372bb72bab54495c8982eddf"

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
