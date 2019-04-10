# parallel processing

```sh
# convert.sh
ffmpeg -i audio1.wav audio1.flac
ffmpeg -i audio2.wav audio2.flac
ffmpeg -i audio3.wav audio3.flac
ffmpeg -i audio4.wav audio4.flac
ffmpeg -i audio5.wav audio5.flac
```

time will print the real time elapsed during execution.

```
time ./convert.sh
```

With the `-a` flag, we can pipe our script directly into parallel. parallel will run every line as a separate command.

```
parallel -a ./convert.sh
```

## Example: convert all wav files in a directory

```sh
ls *.wav | parallel ffmpeg -i {} {.}.flac

# or

parallel ffmpeg -i {} {.}.flac ::: *.wav
```
