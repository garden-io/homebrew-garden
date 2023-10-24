class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "edge-bonsai"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-arm64.tar.gz"
    sha256 "ec22964b0bae4d03d081858bf45cd8514107df2794369743b3069d1f518501aa"
  else
    url "https://download.garden.io/core/edge-bonsai/garden-edge-bonsai-macos-amd64.tar.gz"
    sha256 "12170c655e595659559f03c54c73af277f398f014f1c4bd4d03b474a07578b14"
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
