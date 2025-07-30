class GardenCliAT013 < Formula
  desc "Development engine for Kubernetes"
  homepage "https://garden.io"

  version "0.13.61"

  # Determine architecture
  if Hardware::CPU.arm?
    url "https://download.garden.io/core/0.13.61/garden-0.13.61-macos-arm64.tar.gz"
    sha256 "701fa20f0020272884d461e097eb2c8e5b534f4dc35877559c45d64f3f6f9d52"
  else
    url "https://download.garden.io/core/0.13.61/garden-0.13.61-macos-amd64.tar.gz"
    sha256 "3efedbdd14411f938b9ce6eab391db96817a526470440a53205666451ebe4514"
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
