class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.55/garden-0.12.55-macos-amd64.tar.gz"
  version "0.12.55"
  sha256 "b92efdf0fe54c0be9bed69c161a34eacbbabc4759014807c824955f6e2f6de7e"

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
