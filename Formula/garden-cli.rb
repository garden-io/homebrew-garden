class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.54"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.54/garden-0.13.54-macos-arm64.tar.gz"
    sha256 "a1317910ec5eee9407d3ad20f5ce9aecc9e2c1a005e45448397a450a3b06ae71"
  else
    url "https://download.garden.io/core/0.13.54/garden-0.13.54-macos-amd64.tar.gz"
    sha256 "361d234df2a9643ab6065e6139099b96844b9920e08d585dfd4b82282cee8aca"
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
