class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.26/garden-0.12.26-macos-amd64.tar.gz"
  version "0.12.26"
  sha256 "42710c485627451d676f5a903ab37da688f62401107a2370bfce755dfd610621"

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
