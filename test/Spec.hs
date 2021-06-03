import           Exercicios
import           Test.Tasty
import           Test.Tasty.HUnit

main :: IO ()
main = do
  defaultMain tests

tests :: TestTree
tests =
  (testGroup
     "Semana 2"
     [ test01
     , test02
     , test03
     , test04
     , test05
     , test06
     , test07
     , test08
     , test09
     , test10
     ])

test01 =
  testGroup
    "multiplicar"
    [ testCase "6 * 7" (assertEqual "" 42 (multiplicar 6 7))
    , testCase "3 * 4" (assertEqual "" 12 (multiplicar 3 4))
    , testCase "11 * 6" (assertEqual "" 66 (multiplicar 11 6))
    , testCase "15 * 7" (assertEqual "" 105 (multiplicar 15 7))
    ]

test02 =
  testGroup
    "cumprimentar"
    [ testCase
        "João"
        (assertEqual
           ""
           "A linguagem preferida de João é Haskell"
           (cumprimentar "João"))
    , testCase
        "Maria"
        (assertEqual
           ""
           "A linguagem preferida de Maria é Haskell"
           (cumprimentar "Maria"))
    , testCase
        "José"
        (assertEqual
           ""
           "A linguagem preferida de José é Haskell"
           (cumprimentar "José"))
    , testCase
        "todos"
        (assertEqual
           ""
           "A linguagem preferida de todos é Haskell"
           (cumprimentar "todos"))
    ]

test03 =
  testGroup
    "velocidade"
    [ testCase
        "50km/1h"
        (assertEqual
           ""
           "Isso equivale a 50.0 kilômetros por hora!"
           (velocidade 50 1))
    , testCase
        "50km/2h"
        (assertEqual
           ""
           "Isso equivale a 25.0 kilômetros por hora!"
           (velocidade 50 2))
    , testCase
        "50km/0.5h"
        (assertEqual
           ""
           "Isso equivale a 100.0 kilômetros por hora!"
           (velocidade 50 0.5))
    , testCase
        "123.4km/1.27h"
        (assertEqual
           ""
           "Isso equivale a 97.16536 kilômetros por hora!"
           (velocidade 123.4 1.27))
    ]

test04 =
  testGroup
    "mult7"
    [ testCase "7" (assertEqual "" True (mult7 7))
    , testCase "14" (assertEqual "" True (mult7 14))
    , testCase "18" (assertEqual "" False (mult7 18))
    , testCase "27" (assertEqual "" False (mult7 27))
    ]

test05 =
  testGroup
    "somaEhMult7"
    [ testCase "3 + 4" (assertEqual "" True (somaEhMult7 3 4))
    , testCase "10 + 4" (assertEqual "" True (somaEhMult7 10 4))
    , testCase "15 + 9" (assertEqual "" False (somaEhMult7 15 9))
    , testCase "42 + 12" (assertEqual "" False (somaEhMult7 42 12))
    ]

test06 =
  testGroup
    "estaNoIntervalo"
    [ testCase "5 ∈ [3, 7]" (assertEqual "" True (estaNoIntervalo 5 3 7))
    , testCase "8 ∈ [3, 7]" (assertEqual "" False (estaNoIntervalo 8 3 7))
    , testCase "2 ∈ [3, 7]" (assertEqual "" False (estaNoIntervalo 2 3 7))
    , testCase "7 ∈ [3, 7]" (assertEqual "" True (estaNoIntervalo 7 3 7))
    , testCase "3 ∈ [3, 7]" (assertEqual "" True (estaNoIntervalo 3 3 7))
    ]

test07 =
  testGroup
    "todosNoIntervalo"
    [ testCase "{} ∈ [3, 7]" (assertEqual "" True (todosNoIntervalo [] 3 7))
    , testCase
        "{1,2,3} ∈ [3, 7]"
        (assertEqual "" False (todosNoIntervalo [1, 2, 3] 3 7))
    , testCase
        "{2,3,4} ∈ [3, 7]"
        (assertEqual "" False (todosNoIntervalo [2, 3, 4] 3 7))
    , testCase
        "{3,4,5} ∈ [3, 7]"
        (assertEqual "" True (todosNoIntervalo [3, 4, 5] 3 7))
    , testCase
        "{4,5,6} ∈ [3, 7]"
        (assertEqual "" True (todosNoIntervalo [4, 5, 6] 3 7))
    , testCase
        "{5,6,7} ∈ [3, 7]"
        (assertEqual "" True (todosNoIntervalo [5, 6, 7] 3 7))
    , testCase
        "{6,7,8} ∈ [3, 7]"
        (assertEqual "" False (todosNoIntervalo [6, 7, 8] 3 7))
    ]

test08 =
  testGroup
    "algumNoIntervalo"
    [ testCase "{} ∈ [3, 7]" (assertEqual "" False (algumNoIntervalo [] 3 7))
    , testCase
        "{1,2,3} ∈ [3, 7]"
        (assertEqual "" True (algumNoIntervalo [1, 2, 3] 3 7))
    , testCase
        "{2,3,4} ∈ [3, 7]"
        (assertEqual "" True (algumNoIntervalo [2, 3, 4] 3 7))
    , testCase
        "{3,4,5} ∈ [3, 7]"
        (assertEqual "" True (algumNoIntervalo [3, 4, 5] 3 7))
    , testCase
        "{4,5,6} ∈ [3, 7]"
        (assertEqual "" True (algumNoIntervalo [4, 5, 6] 3 7))
    , testCase
        "{5,6,7} ∈ [3, 7]"
        (assertEqual "" True (algumNoIntervalo [5, 6, 7] 3 7))
    , testCase
        "{6,7,8} ∈ [3, 7]"
        (assertEqual "" True (algumNoIntervalo [6, 7, 8] 3 7))
    , testCase
        "{9,10,11} ∈ [3, 7]"
        (assertEqual "" False (algumNoIntervalo [9, 10, 11] 3 7))
    , testCase
        "{0,1,2} ∈ [3, 7]"
        (assertEqual "" False (algumNoIntervalo [0, 1, 2] 3 7))
    ]

test09 =
  testGroup
    "ehPerfeito"
    [ testCase "6" (assertEqual "" True (ehPerfeito 6))
    , testCase "28" (assertEqual "" True (ehPerfeito 28))
    , testCase "496" (assertEqual "" True (ehPerfeito 496))
    , testCase "42" (assertEqual "" False (ehPerfeito 42))
    , testCase "37" (assertEqual "" False (ehPerfeito 37))
    , testCase "19" (assertEqual "" False (ehPerfeito 19))
    , testCase "22" (assertEqual "" False (ehPerfeito 22))
    ]

test10 =
  testGroup
    "procuraSeis"
    [ testCase "6" (assertBool "" (6 `elem` procuraSeis))
    , testCase "15" (assertBool "" (15 `elem` procuraSeis))
    , testCase "24" (assertBool "" (24 `elem` procuraSeis))
    , testCase "33" (assertBool "" (33 `elem` procuraSeis))
    , testCase "42" (assertBool "" (42 `elem` procuraSeis))
    , testCase "51" (assertBool "" (51 `elem` procuraSeis))
    , testCase "!77" (assertBool "" (not $ 77 `elem` procuraSeis))
    ]
