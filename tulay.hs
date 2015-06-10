-- tulay.hs

import System.IO
import Data.List
import Data.Char

main = do
     writeFile output text
     putStrLn (['L','o','a','d',' ','a','n','d',' ','r','u','n',' '] ++ output)

pieces = ["-- tulay.hs",
          "-- sonat.hs",
          "",
          "import System.IO",
          "import Data.List",
          "import Data.Char",
          "",
          "main = do",
          "     writeFile output text",
          "     putStrLn (['L','o','a','d',' ','a','n','d',' ','r','u','n',' '] ++ output)",
          "",
          "pieces = [",
          "",
          "output = drop 3 (pieces !! 1)",
          "",
          "text =  lines' (drop 1 (take 12 pieces)) ++ (punctuate . swapFirstTwo) pieces ++ [']', chr 10] ++ lines' (drop 12 pieces)",
          "               where lines' = intercalate [chr 10]",
          "                     swapFirstTwo (x0:x1:xs) = x1:x0:xs",
          "                     punctuate = intercalate ([',',chr 10] ++ replicate 10 ' ') . map (([chr 34] ++).( ++ [chr 34]))"]

output = drop 3 (pieces !! 1)

text =  lines' (drop 1 (take 12 pieces)) ++ (punctuate . swapFirstTwo) pieces ++ [']', chr 10] ++ lines' (drop 12 pieces)
               where lines' = intercalate [chr 10]
                     swapFirstTwo (x0:x1:xs) = x1:x0:xs
                     punctuate = intercalate ([',',chr 10] ++ replicate 10 ' ') . map (([chr 34] ++).( ++ [chr 34]))