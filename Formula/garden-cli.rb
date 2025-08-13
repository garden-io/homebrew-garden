class GardenCli < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.14.7"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.14.7/garden-0.14.7-macos-arm64.tar.gz"
    sha256 "c9b64dee1aa9b02d14f9f1738a47a411507dbd4ca7809fa295b53386404b89d2"
  else
    url "https://download.garden.io/core/0.14.7/garden-0.14.7-macos-amd64.tar.gz"
    sha256 "ab1ce6d412895e6ef7a0562c19f61d6a7532899c7a07abd99f8971d883d92506"
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
