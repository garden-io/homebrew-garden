class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.71/garden-0.12.71-macos-amd64.tar.gz"
  version "0.12.71"
  sha256 "a088d03bae9644114d956a7b79b8bc3630c4e9171d9c853a1325db39ef931e6e"

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
