class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.42"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.42/garden-0.13.42-macos-arm64.tar.gz"
    sha256 "7d5e920880b1a0665258bccf7d7c220ad54158640f41466741e3caef1ea09d05"
  else
    url "https://download.garden.io/core/0.13.42/garden-0.13.42-macos-amd64.tar.gz"
    sha256 "5dad9710340ee1b5df5a3810ebb09f059883f2bf889657d358fc929034d4c3ab"
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
