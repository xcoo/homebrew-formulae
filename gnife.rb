class Gnife < Formula
  desc "Gnife is a CLI tool for manipulating genomic files and data."
  homepage "https://github.com/chrovis/gnife"
  url "https://github.com/chrovis/gnife/releases/download/0.1.3/gnife"
  sha256 "85845e44f90a4b8466b283c32039691739062a5ab799403b78e70f4061d96022"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    inreplace "gnife",
              "exec java $GNIFE_JVM_OPTS -jar $0 \"$@\"",
              "exec #{Formula['openjdk'].opt_bin}/java $GNIFE_JVM_OPTS -jar $0 \"$@\""
    chmod 0755, "gnife"
    libexec.install "gnife"
    bin.install_symlink libexec/"gnife"
  end

  test do
    system bin/"gnife", "--version"
  end
end
