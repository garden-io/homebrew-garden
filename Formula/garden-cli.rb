class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.31"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.31/garden-0.13.31-macos-arm64.tar.gz"
    sha256 "d84a97af1f4c144869ac250294bcb0266248f2f879b64e05131e607760dbd0ba"
  else
    url "https://download.garden.io/core/0.13.31/garden-0.13.31-macos-amd64.tar.gz"
    sha256 "e5b1478ac67fba3b18b4799708c215a1f0f6c1ac846e6fc28e43e56e378eb97a"
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
