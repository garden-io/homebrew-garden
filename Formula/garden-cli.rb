class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.6/garden-0.12.6-macos-amd64.tar.gz"
  version "0.12.6"
  sha256 "3a89b1fd57698cbb2e13e0f7a7709f21e5733c6d13f5a9417cbfc3be3f48700e"

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
