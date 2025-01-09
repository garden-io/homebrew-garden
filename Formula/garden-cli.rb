class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.48"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.48/garden-0.13.48-macos-arm64.tar.gz"
    sha256 "41bc9ac44ac2dbafa0321a66f2684fbd20962745079c91d907beb9de77083128"
  else
    url "https://download.garden.io/core/0.13.48/garden-0.13.48-macos-amd64.tar.gz"
    sha256 "1e3ca45c04998261f96b3028d9f463ccac03aadf8ae34ed6e8c2b61bbbaa7022"
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
