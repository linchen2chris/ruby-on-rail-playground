class TemplateMethod
  def initialize
    @title = 'title'
    @text = ['how are you', 'very well']
  end

  def output
    puts('<html>')
    puts('<head>')
    puts("<title>#{@title}</title>")
    puts('</head>')
    puts('<body>')
    @text.each { |line| puts("<p>#{line}</p>") }
    puts('</body>')
    puts('</html>')
  end
end

report = TemplateMethod.new
report.output

class Father
  def initialize
    @title = 'title'
    @text = ['how are you', 'very well']
  end

  def output
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_start
    puts('...start...')
  end

  def output_head
    puts(@title)
  end

  def output_body_start
    puts('...body_start...')
  end

  def output_body
    @text.each { |line| puts(line) }
  end

  def output_body_end
    puts('...body_end...')
  end

  def output_end
    puts('...end...')
  end
end

class HtmlSon < Father
  def output_start
    puts('<html>')
  end

  def output_head
    puts("<title>#{@title}</title>")
  end

  def output_body_start
    puts('<body>')
  end

  def output_body_end
    puts('</body>')
  end

  def output_end
    puts('</html>')
  end
end

class PlaintSon < Father
  def output_start
    puts('.....plaint text.......')
  end

  def output_end
    puts('....plaint text end.....')
  end
end

html = HtmlSon.new
html.output

plainText = PlaintSon.new
plainText.output
