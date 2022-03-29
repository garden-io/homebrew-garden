class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.38/garden-0.12.38-macos-amd64.tar.gz"
  version "0.12.38"
  sha256 "efafc39977d5958a610db8cf319fde94f46336ca97844b3bf6ecd5d805e0f374"

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
