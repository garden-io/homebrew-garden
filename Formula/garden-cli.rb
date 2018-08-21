require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.4.0.tgz"
  sha256 "1f7a5a7c5428a6c77483f03d34a594c166346cdb6ed4d0f9387fa8871ef9e0d0"

  depends_on "node"
  depends_on "rsync"
  depends_on "stern"
  depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end
