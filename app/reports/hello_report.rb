# http://stackoverflow.com/questions/13003287/encodingundefinedconversionerror

# test to verify Prawn was installed correctly
class HelloReport < Prawn::Document
  def to_pdf
    text "Hello world"
    (render).force_encoding('utf-8')
  end
end

=begin
File.open("test.pdf", "w"){|f| f.write(HelloReport.new.to_pdf)}
File.open("test.pdf", "w"){|f| f.write(HelloReport.new.to_pdf.force_encoding('utf-8'))}
=end
