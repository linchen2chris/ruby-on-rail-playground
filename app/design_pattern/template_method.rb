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
    @text.each do |line|
      puts("<p>#{line}</p>")
    end
    puts('</body>')
    puts('</html>')
  end
end

report = TemplateMethod.new
report.output
