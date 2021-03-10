class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.19/garden-0.12.19-macos-amd64.tar.gz"
  version "0.12.19"
  sha256 "b8db496adaca959a5abc275df637a2429a9b921e3e7ac0c23b3c8b96cbba414a"

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
