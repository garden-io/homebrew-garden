class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.13.3/garden-0.13.3-macos-amd64.tar.gz"
  version "0.13.3"
  sha256 "45cb16eed1387f41bca1e500e61cddaec38762dea99ccf9c26fbf00e5899f301"

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
