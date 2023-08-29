# python script that prints the lines for the bash script 
import os 
import re
import glob
import fnmatch

#read filename .tif
tif_folder = "/eejit/depfg/sutan101/data/globgm/downloaded_from_yoda_on_2023-03-13/research-globgm/output/version_1.0/transient_1958-2015/"

files_tif_all = os.listdir(tif_folder)
files_tif_bot = [os.path.basename(x) for x in glob.glob(tif_folder+'globgm-wtd-bot*.tif')]
files_tif_top = list(set(files_tif_all) - set(files_tif_bot))

# ~ print(len(files_tif_all), len(files_tif_bot), len(files_tif_top))
# ~ print(files_tif_all, files_tif_bot, files_tif_top)

# ~ #potentially add progress bar / spinner

#select top or bottom
target_layer_tif = files_tif_top
# ~ target_layer_tif = files_tif_bot


#open new file to save lines (creates automatically if not exists)
with open('lines_for_bash_script.txt','w') as f:


		# ~ set -x

		# ~ INP_FOLDER="/eejit/depfg/sutan101/data/globgm/downloaded_from_yoda_on_2023-03-13/research-globgm/output/version_1.0/transient_1958-2015/"

		# ~ OUT_FOLDER="/scratch/6574882/GENEWS/GENEWS/input/1_water_abstraction/globgm_transient_gw_heads/"
		# ~ mkdir -p ${OUT_FOLDER}

		#exploit current index to do additional operations 
		
		
		for idx, file_n in enumerate(target_layer_tif, start=1):	
			# ~ print(idx, file_n)
			
			
			tif_file_in = file_n
			# ~ print(tif_file_in)
			nc_file_out = tif_file_in.replace('tif','nc')
			# ~ print(nc_file_out)
				
			#if index is not a multiple of n, do not do additional stuff
			#this is to limit cores being used at the same time 
			#depending on current machine capabilities
			
			#doing top layer, so not (!=) the bottom files
			# ~ date_string = re.search('globgm-wtd-bot-(.+?).tif', tif_file_in) #bottom
			date_string = re.search('globgm-wtd-(.+?).tif', tif_file_in) #top
			
			if idx % 12 != 0:
				
				if date_string: 
					date_one = date_string.group(1)
					date_with_colon = date_one[:4] + '-' + date_one[4:6] + '-' + date_one[6:8]
					date = '"'+date_with_colon+'"'
					# ~ print(date)
			
				line = 'bash convert_asc_to_netcdf.sh ${INP_FOLDER}/'+tif_file_in+' '+'${OUT_FOLDER}/'+nc_file_out+' '+date
			
				f.write(line+' '+'&')
				f.write('\n')
				
				
			# add wait every n lines to limit core use
			else:
					
				# ~ print(date_string)
				if date_string: 
					date_one = date_string.group(1)
					date_with_colon = date_one[:4] + '-' + date_one[4:6] + '-' + date_one[6:8]
					date = '"'+date_with_colon+'"'
					# ~ print(date)
			
				line = 'bash convert_asc_to_netcdf.sh ${INP_FOLDER}/'+tif_file_in+' '+'${OUT_FOLDER}/'+nc_file_out+' '+date
			
				f.write(line+' '+'&')
				f.write('\n')
				f.write('\n')
				f.write('wait')
				f.write('\n')	
				f.write('\n')	
	
	
		# ~ # '\n'
		# ~ #set +x


