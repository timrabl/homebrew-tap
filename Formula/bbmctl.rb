class Bbmctl < Formula
  desc "CLI for the German Breitbandmessung broadband measurement API"
  homepage "https://github.com/timrabl/bbmctl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.1/bbmctl-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "d3a86b5aff68f28782b427ce25debc7532a850b6bc193c79181d6a11b3b1028f"
    end
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.1/bbmctl-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "62823b8bfdb4dbba733eca73f146942b68d715e7d4651603b8da6ec5b959b744"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.1/bbmctl-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b59ce53045c4010a5c688f88ea427a8b71fb153cf0afb1e670a39053fec5910"
    end
  end

  def install
    bin.install "bbmctl"
    generate_completions_from_executable(bin/"bbmctl", "completions")
  end

  test do
    assert_match "bbmctl #{version}", shell_output("#{bin}/bbmctl --version")
  end
end
