class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.51/garden-0.12.51-macos-amd64.tar.gz"
  version "0.12.51"
  sha256 "801a8193704c3626af5a9cdb5e5a73919f3784fa2ec92dc24a700f0a7d8bbb0d"

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
