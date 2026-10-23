# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.3; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.3/fixmyprod_0.1.3_darwin_arm64.tar.gz"
      sha256 "dac57af5e9e5235180f80f3b7d79b4f2313032ff44da4935faee6879b6acacc7"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.3/fixmyprod_0.1.3_darwin_amd64.tar.gz"
      sha256 "3355052edcde0bd227d414fb1e5809cd1497cffc9bf2412c7eb0d1dffe896e6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.3/fixmyprod_0.1.3_linux_arm64.tar.gz"
      sha256 "57eee30fc59f2f02061ec090ac0f7cf2aed1445aafda8513bc819769f5c2f36b"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.3/fixmyprod_0.1.3_linux_amd64.tar.gz"
      sha256 "7bc9f6669b11931f399a10c03d1426c827f288def6f1180243f2f8ce93851c61"
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
