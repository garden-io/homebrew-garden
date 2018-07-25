require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.3.1.tgz"
  sha256 "ae6f4576332d3c35cfe38fa95e01ad5ec50b30797a27020aec3a3dd4af7a3da2"

  depends_on "node"
  depends_on "rsync"
  depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end
