class KyotoCabinetJava < Formula
  desc "The Java binding of Kyoto Cabinet"
  homepage "http://fallabs.com/kyotocabinet/"
  url "http://fallabs.com/kyotocabinet/javapkg/kyotocabinet-java-1.24.tar.gz"
  sha256 "9c0ddd561dc34e6b45cb37bef69e0d4536cc42040646247f28635b898e477fb0"

  depends_on "kyoto-cabinet"
  depends_on :java => "1.6+"

  patch :DATA

  def install
    java_home = ENV["JAVA_HOME"] = `/usr/libexec/java_home`.chomp
    ENV.append "CPPFLAGS", "-I#{java_home}/include -I#{java_home}/include/darwin"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end


__END__
--- a/Makefile.in
+++ b/Makefile.in
@@ -29,6 +29,7 @@ prefix = @prefix@
 exec_prefix = @exec_prefix@
 datarootdir = @datarootdir@
 LIBDIR = @libdir@
+JARDIR = @exec_prefix@/share/java
 DESTDIR =
 
 # Building configuration
@@ -91,7 +92,8 @@ untabify :
 
 install :
 	mkdir -p $(DESTDIR)$(LIBDIR)
-	cp -Rf $(JARFILES) $(DESTDIR)$(LIBDIR)
+	mkdir -p $(DESTDIR)$(JARDIR)
+	cp -Rf $(JARFILES) $(DESTDIR)$(JARDIR)
 	cp -Rf $(LIBRARYFILES) $(DESTDIR)$(LIBDIR)
 	@printf '\n'
 	@printf '#================================================================\n'
--- a/configure
+++ b/configure
@@ -2192,7 +2192,7 @@ printf '%s\n' "$MYJAVAHOME"
 printf 'checking JVMPLATFORM... '
 if uname | grep Darwin >config.tmp
 then
-  JVMPLATFORM="mac"
+  JVMPLATFORM="darwin"
 else
   for file in `\ls $MYJAVAHOME/include`
   do
