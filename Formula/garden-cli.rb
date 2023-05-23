class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.0/garden-0.13.0-macos-amd64.tar.gz"
  version "0.13.0"
  sha256 "de21c29b3dd053f2261db0825d8e82ebb90dbc0be72edbbd956067c4603f5a80"

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
