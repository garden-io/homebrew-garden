class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.15/garden-0.12.15-macos-amd64.tar.gz"
  version "0.12.15"
  sha256 "723b0cf9c49891bd2b2f723b59260f8829055be2a5a724697933aa7436df7e80"

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
