# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.4; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.4/fixmyprod_0.1.4_darwin_arm64.tar.gz"
      sha256 "a17312287f11640551bb0169733eb6247e3226d9045d7dd51e7e4cc7e88743a4"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.4/fixmyprod_0.1.4_darwin_amd64.tar.gz"
      sha256 "5dab0fce9ccf5b7ba5660d0e0d262375f3b2614d7197015535a5badd930a9ccf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.4/fixmyprod_0.1.4_linux_arm64.tar.gz"
      sha256 "0c8b4e0c85de59b29307e6e7dc6edafd0ebdc98f6884fa916b31205a3cb42b22"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.4/fixmyprod_0.1.4_linux_amd64.tar.gz"
      sha256 "d80288612ae061457c5902e706fc1968937a4abc2a18abd858c6a07838c50aa6"
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
