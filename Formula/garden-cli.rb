class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.9.9/garden-v0.9.9-macos-amd64.tar.gz"
  version "0.9.9"
  sha256 "dae96a6062265f916ab0090744751b9e0e1ea76bda45e8d29ca018ce1e9a35ca"

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
