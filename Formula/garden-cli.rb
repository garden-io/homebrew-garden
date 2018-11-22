require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.8.0.tgz"
  sha256 "882092a2e18298f28728f5cc9db235a025afbb0a691904c32e74501227c13555"

  depends_on "node"
  depends_on "rsync"


  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end
