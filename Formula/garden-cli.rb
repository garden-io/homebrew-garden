class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.45"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.45/garden-0.13.45-macos-arm64.tar.gz"
    sha256 "a92e3b834d8c69c5dfe825b9280952993051110fe31c77941a5b3231376a7d49"
  else
    url "https://download.garden.io/core/0.13.45/garden-0.13.45-macos-amd64.tar.gz"
    sha256 "5b92bf216a0756048852a0285d70309c22db3772ab8fa097939e135009502b23"
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
