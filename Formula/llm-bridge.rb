class LlmBridge < Formula
  desc "Use any AI IDE's model catalog from any OpenAI-compatible client"
  homepage "https://github.com/aeswibon/llm-bridge"
  url "https://github.com/aeswibon/llm-bridge/releases/download/v1.0.4/llm-bridge-macos-arm64"
  sha256 "b75ea77e664411e94f528da9e0b87d3f5f8e9bd6c50ac71208f8fe0ecb1b8f9a"
  license "MIT"

  def install
    bin.install "llm-bridge-macos-arm64" => "llm-bridge"
  end

  test do
    assert_match "llm-bridge", shell_output("#{bin}/llm-bridge help")
  end
end
