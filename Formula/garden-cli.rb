class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.37"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.37/garden-0.13.37-macos-arm64.tar.gz"
    sha256 "029b8b167c8d38918eb83235362d04b15fec4db089310bfa6cd279d026340da4"
  else
    url "https://download.garden.io/core/0.13.37/garden-0.13.37-macos-amd64.tar.gz"
    sha256 "b534c1c078059564ce04784884f92a309306f380c7e58867e76625960fd5a532"
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
