class MarkedArchivePreprocessor < Formula
  homepage '  https://github.com/thecontinium/homebrew-marked-archive-preprocessor'
  url 'https://github.com/thecontinium/homebrew-marked-archive-preprocessor.git'
  version '0.0.1'

  skip_clean 'bin'

  def install
    bin.install 'marked-archive-preprocessor'
  end

end
