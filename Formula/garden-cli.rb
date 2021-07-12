class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.24/garden-0.12.24-macos-amd64.tar.gz"
  version "0.12.24"
  sha256 "3b1a4540eaa1980fe70efb760ab1dbd193eb34c5639948edac93351669f6cc1f"

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
