class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.6"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.6/garden-0.14.6-macos-arm64.tar.gz"
    sha256 "e66d2def5e583666562ac11125f37f60caefa247298aa2a194b8816c33bb198b"
  else
    url "https://download.garden.io/core/0.14.6/garden-0.14.6-macos-amd64.tar.gz"
    sha256 "c38b0647fbd6d0b293cc313b32da73437df1ceebcb2b586ca725dfe68613c014"
  end

  def install
    libexec.install "garden"
    bin.install_symlink libexec/"garden"
  end

  test do
    # just make sure the command works
    system bin/"garden", "--help"
  end
end
