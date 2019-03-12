class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.5/garden-v0.9.5-macos-amd64.tar.gz"
  version "0.9.5"
  sha256 "a192fd2108b9cbdd65154f1e61d96a92ecf7d264c80e15bed2e898d739ff9338"

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
