class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.18/garden-0.12.18-macos-amd64.tar.gz"
  version "0.12.18"
  sha256 "d010e988b5b64d569004b085685c1cdc2486245b140b2e95e6ef250395a1e145"

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
