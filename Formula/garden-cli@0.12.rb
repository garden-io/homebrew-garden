class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.66/garden-0.12.66-macos-amd64.tar.gz"
  version "0.12.66"
  sha256 "7e3c882fef11b5e953fedd2e4b46c6b5b6bd184f8938012dbfd898cfafa9702a"

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
