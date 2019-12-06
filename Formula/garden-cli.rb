class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.16/garden-v0.10.16-macos-amd64.tar.gz"
  version "0.10.16"
  sha256 "f4b8929c9f87acec08c8f13177dcca18605d9c60eb2be7cf0f56f1a878b7f1e7"

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
