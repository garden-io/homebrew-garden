class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.32"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.32/garden-0.13.32-macos-arm64.tar.gz"
    sha256 "e49406223184bb09bc77070718475d2cc2ca98974ca3561642e293ebd6d31404"
  else
    url "https://download.garden.io/core/0.13.32/garden-0.13.32-macos-amd64.tar.gz"
    sha256 "491eefe22b2ede3bdd8d8ec654dd4a271cae3a4755cb20236b453de7f3b466a5"
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
