class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-bonsai"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-arm64.tar.gz"
    sha256 "8e899d310aeedd00e21e2226bc1084294563eab92d459d6332bba1fa5589bf46"
  else
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-amd64.tar.gz"
    sha256 "dd72cac711209f2afd390ccf97f5a6f3f9728726ad0f66f0a0be01653652a605"
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
