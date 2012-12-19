module BrowserTool
  
  def self.test
    puts 'inside self of browser tool test'
  end
  def test
    puts 'inside browser'
  end

end

module ParseTool

  def test
    puts 'inside parse'
  end

end

module AnalyzeTool

  def test
    puts 'inside analyzer'
  end

end
