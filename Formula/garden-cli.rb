class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.21/garden-0.12.21-macos-amd64.tar.gz"
  version "0.12.21"
  sha256 "0c3763767133e9cb8fcb89177eea417b7ef412cdf8731b06733b47dc1d40d3b8"

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
