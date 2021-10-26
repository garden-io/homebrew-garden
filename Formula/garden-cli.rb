class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.29/garden-0.12.29-macos-amd64.tar.gz"
  version "0.12.29"
  sha256 "dddb2ed716169eecb6fff54f5acae7eb6db07953a2ff2ab8c5577b5e3a35b66c"

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
