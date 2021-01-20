class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.14/garden-0.12.14-macos-amd64.tar.gz"
  version "0.12.14"
  sha256 "111c776f029d0c2f25bc4ea6960ca7554e06ac9830debec3c9c798abc9f03f15"

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
