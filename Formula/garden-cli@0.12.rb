class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.68/garden-0.12.68-macos-amd64.tar.gz"
  version "0.12.68"
  sha256 "3145d46145e6f39af42811f9137b30958cb4945b76a8a8c76b08bb387d33cb0e"

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
