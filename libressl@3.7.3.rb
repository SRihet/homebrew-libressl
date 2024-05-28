class LibresslAT373 < Formula
  desc "Version 3.7.3 of LibreSSL"
  homepage "https://www.libressl.org/"
  url "https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-3.7.3.tar.gz"
  sha256 "7948c856a90c825bd7268b6f85674a8dcd254bae42e221781b24e3f8dc335db3"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/openssl", "version"
  end
end
