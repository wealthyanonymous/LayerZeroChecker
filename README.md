# LayerZero blacklist checker
Crypto wallet address checker for being blacklisted from LayerZero airdrop.

There are only 3 steps you need to do in order to check your wallet(s):

## Step 1
Download the script by pressing `Code` -> `Download ZIP`. It will include a `layerzerochecker.rb` script and `initialList.csv` file provided by LayerZero-Labs here: https://github.com/LayerZero-Labs/sybil-report/blob/main/initialList.csv.zip

If you're overplaying it safe you can open the `layerzerochecker.rb` script file, **ensure it doesn't contain anything suspicious**, download only the script and place it in the same folder as `initialList.csv` file.

## Step 2
Replace wallet addresses with yours in `layerzerochecker.rb` file (lines 8 and 9), don't forget to use quotation marks as shown there.

## Step 3
To run the script type `ruby layerzerochecker.rb` in Terminal (Mac OS) or Command Line Tool (Windows) and press `Enter` button.


Requirements
------
You must have `Ruby` installed on your machine (any version). If you don't have it, you can refer to this official guide:
https://www.ruby-lang.org/en/documentation/installation/
