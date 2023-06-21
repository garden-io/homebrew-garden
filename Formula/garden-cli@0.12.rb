class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.60/garden-0.12.60-macos-amd64.tar.gz"
  version "0.12.60"
  sha256 "8af673efd1314f5b5321f2cd4e4f2ff7c025611280a82287f18045b63fe5e5e7"

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
