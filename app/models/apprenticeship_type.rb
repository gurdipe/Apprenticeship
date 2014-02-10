class ApprenticeshipType < ActiveRecord::Base
  attr_accessible :apprenticeship_type, :description, :job_role, :qualification, :salary, 
  :sector_id, :print_title, :print_description, :print_qualification, :print_job_role,
  :issuing_authority, :new, :revised, :higher_apprenticeship, :print_salary, :career_ids, :subject_ids

  belongs_to :sector

  has_many :apprenticeship_type_careers, :dependent => :destroy
  has_many :careers, through: :apprenticeship_type_careers

  has_many :apprenticeship_type_subjects, :dependent => :destroy
  has_many :subjects, through: :apprenticeship_type_subjects

   def appTypeDescription
		description
	 end

	def self.records_since(time)
	  where("created_at > ?", time)
	end


def render_to_word(name = 'doc_from_template')
  file = Rails.root.join("public","resources", "test.docx");
  inputDir = ::Rails.root.join('app','models','word','apprenticeship_types','template')
  outputFile = ::Rails.root.join('public','docx',"apprenticeship_type_#{id}.docx")
  file_to_string  
  write inputDir, outputFile
  outputFile
end

def file_to_string 
  templateFile              = ::Rails.root.join('app','models','word', 'apprenticeship_types', 'template_document.xml')
  file                      = File.open templateFile
  contents                  = file.read
  file.close

  this_print_title          = ActionController::Base.helpers.sanitize(self.print_title)            unless self.print_title.nil? 
  this_print_description    = ActionController::Base.helpers.strip_tags(self.print_description)    unless self.print_description.nil? 
  this_print_qualification  = ActionController::Base.helpers.strip_tags(self.print_qualification)  unless self.print_qualification.nil? 
  this_print_salary         = ActionController::Base.helpers.strip_tags(self.print_salary)         unless self.print_salary.nil? 
  this_print_job_role       = ActionController::Base.helpers.strip_tags(self.print_job_role)       unless self.print_job_role.nil? 
  this_issuing_authority    = ActionController::Base.helpers.strip_tags(self.issuing_authority)    unless self.issuing_authority.nil? 
  
contents.gsub!( /::print_title:(.*?):print_title::/ )                         { "#{this_print_title}"             }
contents.gsub!( /::print_description:(.*?):print_description::/ )             { "#{this_print_description}"       }
contents.gsub!( /::print_qualification:(.*?):print_qualification::/ )         { "#{this_print_qualification }"    }
contents.gsub!( /::print_salary:(.*?):print_salary::/ )                       { "#{this_print_salary}"            }
contents.gsub!( /::print_job_role:(.*?):print_job_role::/ )                   { "#{this_print_job_role}"          } 
contents.gsub!( /::issuing_authority:(.*?):issuing_authority::/ ) { "#{this_issuing_authority}" }

aFile_path = ::Rails.root.join('app','models','word','apprenticeship_types','template','word', 'document.xml')
aFile = File.new(aFile_path, "w")
aFile.write(contents)
aFile.close
  
end

def write inputDir, outputFile

  require 'zip/zip'

    FileUtils.rm outputFile,:force => true
    entries = Dir.entries(inputDir); entries.delete("."); entries.delete("..") 
    io = Zip::ZipFile.open(outputFile, Zip::ZipFile::CREATE);
    writeEntries(entries, "", io, inputDir, outputFile)
    io.close();
  end

  # A helper method to make the recursion work.
  private
  def writeEntries(entries, path, io, inputDir, outputFile)
    
    entries.each { |e|
      zipFilePath = path == "" ? e : File.join(path, e)
      diskFilePath = File.join(inputDir, zipFilePath)
      puts "Deflating " + diskFilePath
      if  File.directory?(diskFilePath)
        io.mkdir(zipFilePath)
        subdir =Dir.entries(diskFilePath); subdir.delete("."); subdir.delete("..") 
        writeEntries(subdir, zipFilePath, io, inputDir, outputFile)
      else
        io.get_output_stream(zipFilePath) { |f| f.puts(File.open(diskFilePath, "rb").read())}
      end
    }
  end

end
