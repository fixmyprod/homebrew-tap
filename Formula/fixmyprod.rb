# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.0; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.0/fixmyprod_0.1.0_darwin_arm64.tar.gz"
      sha256 "281db68b379d49d90ec5f55e514c3f5c1049a06b3cfc009039b63407f6624cbb"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.0/fixmyprod_0.1.0_darwin_amd64.tar.gz"
      sha256 "28046d4a0bbc131bfd79b1b9ef35cbb7f17c7447bec591b8c73c49c29eada0de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.0/fixmyprod_0.1.0_linux_arm64.tar.gz"
      sha256 "ad145ae4a01660fce70bd7ddb720b221367964fe678019292c0a3a956e5cd9a0"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.0/fixmyprod_0.1.0_linux_amd64.tar.gz"
      sha256 "45a5fee1f533881b9cb6a452d30648493ade177810837ecc155f0322767e4362"
    end
  end

  def install
    bin.install "fixmyprod"
    # cobra writes them; powershell is left out, as cobra names it differently from brew's pwsh.
    generate_completions_from_executable(bin/"fixmyprod", "completion", shells: [:bash, :zsh, :fish])
  end

  test do
    assert_match "fixmyprod #{version}", shell_output("#{bin}/fixmyprod version")
  end
end
