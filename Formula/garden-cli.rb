class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.14/garden-v0.11.14-macos-amd64.tar.gz"
  version "0.11.14"
  sha256 "be7f9b80f3d6a6c7c6eccea6ad8dd29d339b2a8011971f835ea9bb13ecc59f1b"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static", "node_sqlite3.node"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
