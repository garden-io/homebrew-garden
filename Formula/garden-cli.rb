class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.8/garden-0.12.8-macos-amd64.tar.gz"
  version "0.12.8"
  sha256 "04f813246ded6ae86be233b567a39f45710f0c6699645e4e0104124fa69d907b"

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
