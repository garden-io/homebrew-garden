class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.42/garden-0.12.42-macos-amd64.tar.gz"
  version "0.12.42"
  sha256 "2cd463214ed1dadaa1acc6b1b52d9d23880b84d9eae62caa588fea2baeb5e78e"

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
