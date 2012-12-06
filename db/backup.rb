# backup.rb
# This is a ruby script to run the 
# Backups of the mysql databases

require 'mail'

# %x(mysqldump -u root -p148woodhouse --databases reflections mywellbeing_prod > reflections_mywellbeing_prod.sql)
%x(mysqldump -u apprentice -pbarkerbrooks --databases apprentice > apprentice_prod.sql)
date = %x(date '+%y_%m_%d_%H_%M_%S').chomp
file_name = "reflections_mywellbeing_prod_#{date}.tar.gz"  
cmd = "tar -cvzf #{file_name} reflections_mywellbeing_prod.sql"
puts `#{cmd}`
puts `rm -rf reflections_mywellbeing_prod.sql`
#@mail = Mail.new
mail = Mail.new do
      from 'geoff@ntileeds.co.uk'
        to 'leedsmetstudio@gmail.com'
   	subject "Backup #{date}"
      	body 'This is the body'
 	#mail.add_file(file_name)
	add_file :filename => "#{file_name}", :data => File.read("#{file_name}")
end
mail.deliver!
sleep 15
puts `rm -rf #{file_name}`