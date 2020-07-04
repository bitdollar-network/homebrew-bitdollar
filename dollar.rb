class Dollar < Formula
  desc "Official C++ implementation of Dollar protocol"
  homepage "https://bibicle.com"
  url "https://github.com/bitdollar-network/dollar.git", :tag => "v2.6.0"

  devel do
    url "https://github.com/bitdollar-network/dollar.git", :branch => "master"
  end

  depends_on :macos => :el_capitan
  depends_on "boost" => "c++11"

  def install
    bin.install "build/bin/dollar"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/dollar", "--version"
  end
end
