class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.45/garden-0.12.45-macos-amd64.tar.gz"
  version "0.12.45"
  sha256 "86a1ab4dde75be1f325be05e2c44a5c09ed4192b14597fb80b0cca8b2e8d13f0"

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
