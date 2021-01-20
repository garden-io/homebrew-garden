class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.13/garden-0.12.13-macos-amd64.tar.gz"
  version "0.12.13"
  sha256 "b98e20010194100e8b57b1f9584f26409e514eebb783f5d06fd905b0935172dc"

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
