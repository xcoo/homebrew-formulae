class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.8.4/cljam", :using => :nounzip
  sha256 "9d18a7f5d2fa4e93aa54c0b6663739ca142cee86d2992b3e792bc55a062b9a52"

  depends_on "openjdk"

  def install
    chmod 0755, "cljam"
    libexec.install "cljam"
    bin.install_symlink libexec/"cljam"
  end

  test do
    system bin/"cljam", "version"
  end
end
