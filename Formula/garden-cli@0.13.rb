class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.59"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.59/garden-0.13.59-macos-arm64.tar.gz"
    sha256 "882718c8ab1039b3771e8a15d4ab44a34ff95ef3b4c40bf1faae52bc195951ba"
  else
    url "https://download.garden.io/core/0.13.59/garden-0.13.59-macos-amd64.tar.gz"
    sha256 "515786ec26b9e5ed215331f3b9d5ad7dc4437709c904e564c2301068f647595e"
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
