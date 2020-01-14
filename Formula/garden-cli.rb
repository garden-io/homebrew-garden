class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.11.0/garden-v0.11.0-macos-amd64.tar.gz"
  version "0.11.0"
  sha256 "88831b7a7253f1f9514a7f5f381f07da7ed1a311bcf9b94b1e9898c8fc98b661"

  depends_on "rsync"

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
