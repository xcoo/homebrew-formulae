class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.2.0/cljam"
  sha256 "2c5bbe8eb7f123b21e44dab6e10636f9bdff4b636b14b952cc7be3f5253c3ee0"

  depends_on :java

  def install
    chmod 0755, "cljam"
    libexec.install "cljam"
    bin.install_symlink libexec/"cljam"
  end

  test do
    system bin/"cljam", "--help"
  end
end
