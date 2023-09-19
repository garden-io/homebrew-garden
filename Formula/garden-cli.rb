class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.14"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.14/garden-0.13.14-macos-arm64.tar.gz"
    sha256 "aea7c5ef0aee956c43daa1db50b573d734507ba46513290f2b0a5aa81b54fd98"
  else
    url "https://download.garden.io/core/0.13.14/garden-0.13.14-macos-amd64.tar.gz"
    sha256 "f4f845108c502327dfda4545d95f5f89922a1ad104cdd250b438128880713e9b"
  end

  def install
    libexec.install "garden", "fsevents.node", "static"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
