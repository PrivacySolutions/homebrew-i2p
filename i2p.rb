require "formula"

class I2p < Formula

  homepage "http://i2p.io"
  url "https://github.com/PrivacySolutions/i2pd/archive/v0.3.0-1stbinrelease.tar.gz"
  mirror "https://sigterm.no/media/i2pd/archive/v0.3.0-1stbinrelease.tar.gz"
  version "0.3.0"
  sha1 "3cb25e56f6858c229da5589027a7e9512326fa5a"


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
