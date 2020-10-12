class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.7/garden-0.12.7-macos-amd64.tar.gz"
  version "0.12.7"
  sha256 "445e1e6dd78e945762d6dae767e377a9f094f40fb02f6c30befcb022fd585e9c"

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
