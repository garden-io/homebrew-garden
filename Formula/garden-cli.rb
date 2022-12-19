class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"
  url "https://github.com/garden-io/garden/releases/download/0.12.48/garden-0.12.48-macos-amd64.tar.gz"
  version "0.12.48"
  sha256 "9a861a81e0045c910baf372ab96388a9902745a269e77246ce353e56ac40874f"

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
