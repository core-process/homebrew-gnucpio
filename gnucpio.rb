class Gnucpio < Formula
  desc "GNU cpio copies files into or out of a cpio or tar archive. The archive can be another file on the disk, a magnetic tape, or a pipe."
  homepage "https://www.gnu.org/software/cpio/"
  url "https://ftp.gnu.org/gnu/cpio/cpio-2.12.tar.gz"
  version "2.12"
  sha256 "08a35e92deb3c85d269a0059a27d4140a9667a6369459299d08c17f713a92e73"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--program-prefix=gnu",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/gnucpio", "--version"
  end
end
