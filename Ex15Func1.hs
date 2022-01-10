import Data.List
import System.IO


isOdd :: Int -> Bool
isOdd number
    | number `mod` 2 == 0 = False
    | otherwise = True

isEven:: Int -> Bool
isEven number = number `mod` 2 == 0

---- Guard -----------------------------------------------

whichSchool::Int -> String
whichSchool age
    | (age > 4) && (age <=6) = "Kinder school"
    | (age > 6) && (age <= 12) = "Elementary school"
    | (age > 12) && (age <= 15) = "Primary school"
    | (age > 15) && (age <= 18) = "Secondary school"
    | (age > 18) && (age <= 23) = "University"
    | otherwise = "You are not at any type of school"

----  ----------------------------------------------------

whichGrade::Double -> Double -> String
whichGrade sum numberOfElements
    | (grade < 0.1) = "worst"
    | (grade < 0.2) = "worse"
    | (grade < 0.3) = "normal"
    | (grade < 0.4) = "good"
    | (grade < 0.5) = "better"
    | (grade < 0.6) = "best"
    | otherwise = "Is not in this list"
    where grade = (sum / numberOfElements)




main = do 
    print(isOdd 5)
    print(isOdd 6)
    print(isEven 7)
    print(isEven 8)
    --
    putStrLn(whichSchool 5)
    putStrLn(whichSchool 8)
    putStrLn(whichSchool 14)
    putStrLn(whichSchool 16)
    putStrLn(whichSchool 20)
    putStrLn(whichSchool 2)
    putStrLn(whichSchool 27)
    --
    putStrLn(whichGrade 1 100)
    putStrLn(whichGrade 1 10)
    putStrLn(whichGrade 2 10)
    putStrLn(whichGrade 3 10)
    putStrLn(whichGrade 4 10)
    putStrLn(whichGrade 5 10)
    putStrLn(whichGrade 6 10)
    putStrLn(whichGrade 7 10)
    putStrLn(whichGrade 8 10)
    putStrLn(whichGrade 9 10)
    putStrLn(whichGrade 0 10)
    