-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Hasura.Enum.Order_by exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| column ordering options

  - Asc - in ascending order, nulls last
  - Asc\_nulls\_first - in ascending order, nulls first
  - Asc\_nulls\_last - in ascending order, nulls last
  - Desc - in descending order, nulls first
  - Desc\_nulls\_first - in descending order, nulls first
  - Desc\_nulls\_last - in descending order, nulls last

-}
type Order_by
    = Asc
    | Asc_nulls_first
    | Asc_nulls_last
    | Desc
    | Desc_nulls_first
    | Desc_nulls_last


list : List Order_by
list =
    [ Asc, Asc_nulls_first, Asc_nulls_last, Desc, Desc_nulls_first, Desc_nulls_last ]


decoder : Decoder Order_by
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "asc" ->
                        Decode.succeed Asc

                    "asc_nulls_first" ->
                        Decode.succeed Asc_nulls_first

                    "asc_nulls_last" ->
                        Decode.succeed Asc_nulls_last

                    "desc" ->
                        Decode.succeed Desc

                    "desc_nulls_first" ->
                        Decode.succeed Desc_nulls_first

                    "desc_nulls_last" ->
                        Decode.succeed Desc_nulls_last

                    _ ->
                        Decode.fail ("Invalid Order_by type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : Order_by -> String
toString enum____ =
    case enum____ of
        Asc ->
            "asc"

        Asc_nulls_first ->
            "asc_nulls_first"

        Asc_nulls_last ->
            "asc_nulls_last"

        Desc ->
            "desc"

        Desc_nulls_first ->
            "desc_nulls_first"

        Desc_nulls_last ->
            "desc_nulls_last"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe Order_by
fromString enumString____ =
    case enumString____ of
        "asc" ->
            Just Asc

        "asc_nulls_first" ->
            Just Asc_nulls_first

        "asc_nulls_last" ->
            Just Asc_nulls_last

        "desc" ->
            Just Desc

        "desc_nulls_first" ->
            Just Desc_nulls_first

        "desc_nulls_last" ->
            Just Desc_nulls_last

        _ ->
            Nothing
