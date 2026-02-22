module Helper exposing (..)

import Html
import Html.Attributes exposing (download, href, list, name, title)



--joinWorks


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2



--isUpperChars


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


caseUpperChar : Char -> Bool
caseUpperChar mayusculas =
    case mayusculas of
        'a' ->
            True

        'b' ->
            False

        'c' ->
            False

        _ ->
            False



--evalChars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



--funcion para evalChars


funTran : Char -> Bool
funTran superHeroes =
    case superHeroes of
        'a' ->
            True

        'b' ->
            False

        'c' ->
            True

        _ ->
            False


lista : List Char
lista =
    [ 'a', 'b', 'c' ]



--para correrlo Helper.evalChars Helper.lista Helper.funTran
--headers


headers : String -> Html.Html msg
headers fun =
    Html.div
        []
        [ Html.h1
            []
            [ Html.text fun ]
        , Html.h2
            []
            [ Html.text fun ]
        , Html.h3
            []
            [ Html.text fun ]
        , Html.h4
            []
            [ Html.text fun ]
        , Html.h5
            []
            [ Html.text fun ]
        , Html.h6
            []
            [ Html.text fun ]
        ]


frase : String
frase =
    "Hola mundo"



--hyperlink
--<a href="{{url}}">{{text}}</a>


hyperlink : String -> String -> Html.Html msg
hyperlink fun1 fun2 =
    Html.a
        [ Html.Attributes.href fun1 ]
        [ Html.text fun2 ]


fraseOne : String
fraseOne =
    "Beca queka"


fraseTwo : String
fraseTwo =
    "Come quekas"



--Para que pudiera cargar main se tuvo que convinar


main : Html.Html msg
main =
    Html.div [] [ headers frase, hyperlink fraseOne fraseTwo ]
