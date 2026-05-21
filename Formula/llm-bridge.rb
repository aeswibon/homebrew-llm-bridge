class LlmBridge < Formula
  desc "Use any AI IDE's model catalog from any OpenAI-compatible client"
  homepage "https://github.com/aeswibon/llm-bridge"
  url "https://github.com/aeswibon/llm-bridge/releases/download/v1.1.2/llm-bridge-macos-arm64"
  sha256 "98f2aeeb589fc81f530fdbbb5d68ef64987970e389d19d7ad8ec2567ea72ff0b"
  version "1.1.2"
  license "MIT"

  def install
    bin.install "llm-bridge-macos-arm64" => "llm-bridge"
  end

  test do
    assert_match "llm-bridge", shell_output("#{bin}/llm-bridge help")
  end
end
