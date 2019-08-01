class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.3/garden-v0.10.3-macos-amd64.tar.gz"
  version "0.10.3"
  sha256 "ef2406e1c860f5dc4e3b7e0f12af3f5530578ac4dd860c93482006c415b5d596"

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
