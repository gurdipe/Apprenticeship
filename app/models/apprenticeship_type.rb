class ApprenticeshipType < ActiveRecord::Base
  attr_accessible :apprenticeship_type, :description, :job_role, :qualification, :salary, 
  :sector_id, :print_title, :print_description, :print_qualification, :print_job_role,
  :issuing_authority, :new, :revised, :higher_apprenticeship, :print_salary

  belongs_to :sector

   def appTypeDescription
		description
	 end

	def self.records_since(time)
	  where("created_at > ?", time)
	end

# def render_to_xls(cars, name = 'myname')

# 		book = Spreadsheet::Workbook.new
# 		data = book.create_worksheet :name => name
# 		data.row(0).concat %w{car_type miles 2nd_key}
# 		header_format = Spreadsheet::Format.new :color => :green, :weight => :bold
# 		data.row(0).default_format = header_format

# 		cars.each_with_index { |n, i|

# 			data.row(i+1).push n.car.car_type.full_name,n.email
# 		}  
# 		blob = StringIO.new('')
# 		book.write(blob)
# 		blob
# 	end
	def render_to_word(name = 'doc_from_template')

		# blob =	File.open("path/to/file", "w") { |file|  }

 file = Rails.root.join("public","resources", "test.docx");
 file



	end

  def create_docx()

    write_path = ::Rails.root.join('public','docx',"apprenticeship_type_#{name}.docx")

     bundle_filename = "abc.zip"
      FileUtils.rm "abc.zip",:force => true
      dir = "testruby"
      Zip::ZipFile.open(bundle_filename, Zip::ZipFile::CREATE) { |zipfile|
        Dir.foreach(dir) do |item|
          item_path = "#{dir}/#{item}"
          zipfile.add( item,item_path) if File.file?item_path
        end
      }
     File.chmod(0644,bundle_filename)


  end

end
