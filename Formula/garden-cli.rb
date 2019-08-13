class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/v0.10.5/garden-v0.10.5-macos-amd64.tar.gz"
  version "0.10.5"
  sha256 "e1cb8338bd7ad105779b787257f07ddf156e776bca4ae7e3a03d7b6145bcb726"

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
