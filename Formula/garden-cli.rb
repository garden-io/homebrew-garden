class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.19"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.19/garden-0.14.19-macos-arm64.tar.gz"
    sha256 "8dae5e91b809bf62345bcedc32815f389e9d288235c23fefec5525a7c21ad484"
  else
    url "https://download.garden.io/core/0.14.19/garden-0.14.19-macos-amd64.tar.gz"
    sha256 "d11b2abc4d66bd4a84fe0a99666ac9504e4609522caa80a9f84bfbb9e6cf1012"
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
