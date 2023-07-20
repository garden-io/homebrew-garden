class GardenCliAT012 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://download.garden.io/core/0.12.63/garden-0.12.63-macos-amd64.tar.gz"
  version "0.12.63"
  sha256 "324ad765f3481d2a5613abbef9503315938271d6917da6df58ac0d5a4d29f811"

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
