class Cljam < Formula
  desc "Tools for manipulating DNA Sequence Alignment/Map (SAM)"
  homepage "https://chrovis.github.io/cljam/"
  url "https://github.com/chrovis/cljam/releases/download/0.8.5/cljam", :using => :nounzip
  sha256 "574f65cefa32713e4f2089292d1ed43480df0d1556275e5d0e0d4e971cb6898b"

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
