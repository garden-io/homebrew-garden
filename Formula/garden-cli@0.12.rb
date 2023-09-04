class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.64/garden-0.12.64-macos-amd64.tar.gz"
  version "0.12.64"
  sha256 "46daa1660e13f7aa1329aa2ae3ce0ba4912e3f9982af6ce5900c99358dc0b282"

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
