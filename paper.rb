class Paper < Formula
  desc "The Paper Contract-Oriented Programming Language"
  homepage "http://bibicle.com"
  url "https://github.com/bitdollar-network/paper.git", :tag => "v2.6.0"
  
  devel do
    url "https://github.com/bitdollar-network/paper.git", :branch => "master"
  end

  depends_on "cmake" => :build
  depends_on "boost" => "c++11"
  depends_on "ccache" => :build
  depends_on "z3"

  def install
    bin.install "build/bin/paperc"
  end

  test do
    system "#{bin}/paperc", "--version"
  end
end
