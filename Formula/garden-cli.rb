class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.1/garden-v0.10.1-macos-amd64.tar.gz"
  version "0.10.1"
  sha256 "e4d32de52c31c6c19a9c976ffea0ecec7eb9d59fa8f6be3c7dc15bd3ec0a90ac"

  depends_on "rsync"

  def install
    libexec.install "garden", "fse.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
