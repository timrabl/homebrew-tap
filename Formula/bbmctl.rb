class Bbmctl < Formula
  desc "CLI for the German Breitbandmessung broadband measurement API"
  homepage "https://github.com/timrabl/bbmctl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.3/bbmctl-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "a23b9a3a7bdd3e63e1a841bd6b756fc96540c2e2bffef2677e8f4dcdae20b7ac"
    end
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.3/bbmctl-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "955f3ac09a6860aaef5dc18096de24783e54b3fc03d8fbb7fdad914b56b384c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/timrabl/bbmctl/releases/download/v0.2.3/bbmctl-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c7cf39b351f1c6106635769b984336eec1b0f8b174d46e7946f471ad62b3b9b"
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
