class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.49/garden-0.12.49-macos-amd64.tar.gz"
  version "0.12.49"
  sha256 "3ffdb9583b316fd7eca860a34b31058b92c70bf1949dc9d0a0566d9ce8dcb123"

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
