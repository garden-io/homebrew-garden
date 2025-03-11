class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.55"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.55/garden-0.13.55-macos-arm64.tar.gz"
    sha256 "d276ed2c878722855d909cbee00249a0913598299f1186db2b044d3def2f0538"
  else
    url "https://download.garden.io/core/0.13.55/garden-0.13.55-macos-amd64.tar.gz"
    sha256 "0a556a02ea34f16b8a2dd62a7b0156512ac7ee4473e0078b067bc67f6ffe4c54"
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
