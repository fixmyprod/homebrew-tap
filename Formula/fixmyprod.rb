# Written by scripts/cli-release in fixmyprod/fixmyprod for 0.1.2; edits here are overwritten.
class Fixmyprod < Formula
  desc "Broken production labs, fixed from your own terminal"
  homepage "https://fixmyprod.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.2/fixmyprod_0.1.2_darwin_arm64.tar.gz"
      sha256 "c9ed2343ca8364e8e9c92e341b26974026b8ea7d135855a4c2e8e91b774a0241"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.2/fixmyprod_0.1.2_darwin_amd64.tar.gz"
      sha256 "01a275bcf9926b1bb1a6594625daa6eb09ac75f98ca9e85ec579d630023f5fde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.2/fixmyprod_0.1.2_linux_arm64.tar.gz"
      sha256 "bd1ddb19e0ea7a11b7028d5be56e1769acb29713ee06033183682d84b00b24ae"
    end
    on_intel do
      url "https://github.com/fixmyprod/homebrew-tap/releases/download/v0.1.2/fixmyprod_0.1.2_linux_amd64.tar.gz"
      sha256 "810b229c837ef867c413e2b768d4f4cc98e5db2d8fdd98d1806d87747eb29d8d"
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
