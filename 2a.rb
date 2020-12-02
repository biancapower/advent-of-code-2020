# read in the file, line by line
# split each line on spaces
  # 2-13 t: llckxhfmtznptndcsx -> ["2-13", "t:" "llckxhfmtznptndcsx"]
  # split arr[0] on - and convert to ints
    # [[2, 13], "t:" "llckxhfmtznptndcsx"] 
  # remove : from arr[1]
    # # [[2, 13], "t" "llckxhfmtznptndcsx"]
# does the letter in arr[1] appear in the string arr[2] between arr[0][0] and arr[0][1] times?