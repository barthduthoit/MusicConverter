for f in to_convert/*{.flac,.wav}; do
	mv "$f" "${f// /_}";
done

for flac in to_convert/*.flac; do
	new_path=${flac/"to_convert"/"mp3"}
	new_path=${new_path/%".flac"/".mp3"}
	echo $flac
	ffmpeg -v quiet -stats -i $flac -codec:a libmp3lame -q:a 0 $new_path
done

for wav in to_convert/*.wav; do
        new_path=${wav/"to_convert"/"mp3"}
        new_path=${new_path/%".wav"/".mp3"}
	echo $wav
        ffmpeg -v quiet -stats -i $wav -codec:a libmp3lame -q:a 0 $new_path
done
