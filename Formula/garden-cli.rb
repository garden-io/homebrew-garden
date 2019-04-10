class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.7/garden-v0.9.7-macos-amd64.tar.gz"
  version "0.9.7"
  sha256 "55d147d8c3ea56e4067179625519389d19e41dd129e0ef7cd28508b27868b7d4"

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
