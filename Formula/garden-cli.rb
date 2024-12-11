class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.46"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.46/garden-0.13.46-macos-arm64.tar.gz"
    sha256 "c207667965eba301dda3837bf619862d4d26e9bbc5ab87c45718d0654e5f4d6e"
  else
    url "https://download.garden.io/core/0.13.46/garden-0.13.46-macos-amd64.tar.gz"
    sha256 "3026f18e04b26828aad99c26234dced06d86633c709684acdbb45f858d1e1b31"
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
