class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.41/garden-0.12.41-macos-amd64.tar.gz"
  version "0.12.41"
  sha256 "ac56a28d2efba2314e7103dc0729212e4a112fc5cb626d6ddd08c39b37871c0d"

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
