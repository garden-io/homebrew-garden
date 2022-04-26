class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.40/garden-0.12.40-macos-amd64.tar.gz"
  version "0.12.40"
  sha256 "b6a813ae851d750274a4968f7efac637ce7e07558f90abadcca37c8d01e30a11"

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
