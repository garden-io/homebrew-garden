class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.53/garden-0.12.53-macos-amd64.tar.gz"
  version "0.12.53"
  sha256 "1f0a84403b988df2acd03492589fa1a7b5241e1557e44f9eed239f5e685bc2d9"

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
