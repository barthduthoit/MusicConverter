for flac in to_convert/*.flac; do
	new_path=${flac/"to_convert"/"mp3"}
	new_path=${new_path/%".flac"/".mp3"}
	ffmpeg  -i $flac -codec:a libmp3lame -q:a 0 $new_path
done
