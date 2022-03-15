class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.36/garden-0.12.36-macos-amd64.tar.gz"
  version "0.12.36"
  sha256 "28a703abb2a9e6998bd065a6ea9db18b9a599edb36aeea92efd9fee11edc03e6"

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
