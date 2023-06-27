class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.61/garden-0.12.61-macos-amd64.tar.gz"
  version "0.12.61"
  sha256 "63dab6765d82462ccec76d9ef87883a3712e90a8234c0f8cec18bb7a0dcadb4c"

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
