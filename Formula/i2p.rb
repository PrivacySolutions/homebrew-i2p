require "formula"

class I2p < Formula

  homepage "http://i2p.io"
  url "https://github.com/PrivacySolutions/i2pd/archive/0.3.0-homebrew.tar.gz"
  mirror "https://sigterm.no/media/i2pd/archive/0.3.0-homebrew.tar.gz"
  version "0.3.0"
  sha1 "dea884e827e235174fc477b3e26d8dd4ec1f1f8f"


  devel do
    version 'devel-git'
    url "https://github.com/PrivacySolutions/i2pd.git", :using => :git, :branch => 'master'
  end


  depends_on "cryptopp" => :build
  depends_on "boost" => :build
  depends_on :xcode

  def install
    system "make", "#{prefix}", "install"
  end

  test do
    # Nothing to test yet.
    system "false"
  end
end
