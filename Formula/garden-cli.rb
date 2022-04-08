class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.39/garden-0.12.39-macos-amd64.tar.gz"
  version "0.12.39"
  sha256 "8e210697908e708f34b9e8c9dea87b92b7688d068df215d753544cc5fa032dd0"

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
