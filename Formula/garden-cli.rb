class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.22/garden-0.12.22-macos-amd64.tar.gz"
  version "0.12.22"
  sha256 "45508474593fcc462d7e653519388686ed3aa9bedcfd0d1e60906fff617dc915"

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
