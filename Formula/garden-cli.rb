require "language/node"

class GardenCli < Formula
  desc "A full-featured development framework for containers and serverless"
  homepage "https://github.com/garden-io/garden"
  url "https://registry.npmjs.org/garden-cli/-/garden-cli-0.7.0.tgz"
  sha256 "e89b6d722fc216ff7e9c035f3c282834ac9951e447378b070defb7cac0794982"

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
