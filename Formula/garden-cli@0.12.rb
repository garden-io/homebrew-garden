class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.62/garden-0.12.62-macos-amd64.tar.gz"
  version "0.12.62"
  sha256 "4f7b58058726b9863c3046dad49ed1196703e194e99460a9e7722323e689eead"

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
