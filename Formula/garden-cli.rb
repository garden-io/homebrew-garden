class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.27/garden-0.12.27-macos-amd64.tar.gz"
  version "0.12.27"
  sha256 "76d86a5c284b646aa80561400221ab1f2cd54d984745730be411ef8ccb4e4c8e"

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
