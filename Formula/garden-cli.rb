class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.16/garden-0.12.16-macos-amd64.tar.gz"
  version "0.12.16"
  sha256 "75a18ed53f9d32783c06d55b610954729a4da5ee9671cc6169aa7742dc7a48f9"

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
