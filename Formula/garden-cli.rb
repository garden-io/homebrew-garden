class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.31/garden-0.12.31-macos-amd64.tar.gz"
  version "0.12.31"
  sha256 "fd60b23a92b3adc7c0f6210ed294b5ba73d15d464777227fe56d0ec29c128359"

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
