# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.6; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.6/fixmyprod_0.1.6_darwin_arm64.tar.gz"
      sha256 "15a55887ee0c35c330295178789f8a2d9e1a562eef2a5b63eee8748492cafe5c"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.6/fixmyprod_0.1.6_darwin_amd64.tar.gz"
      sha256 "dbbe0dd0ff587d40503827a946993ff70a515a762af717bececa3775e7fcf3d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.6/fixmyprod_0.1.6_linux_arm64.tar.gz"
      sha256 "4a620848f3665d863cb76fd1243d166ca6341bca934c48487cce863c2a84ec3e"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.6/fixmyprod_0.1.6_linux_amd64.tar.gz"
      sha256 "c3e31fb9906240987a5dcf97905a6557fbbefd44308252e2b605bbbc57f87ee1"
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
