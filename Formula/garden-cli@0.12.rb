class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.69/garden-0.12.69-macos-amd64.tar.gz"
  version "0.12.69"
  sha256 "1a0fa1d7e947aad3fb969a46e854d2d5e3623f8536d3f914a177d5784975977f"

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
