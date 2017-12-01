module App exposing (..)

import Html exposing (Html, div, text, program, ul, li)
import Html.Attributes exposing (class)

versions = ["1.0", "2.0", "3.0"]

-- MODEL
type alias Model =
    String


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )



-- MESSAGES
type Msg
    = NoOp



-- VIEW
render_list : String -> Html msg
render_list v = 
  li [] [text v]


view : Model -> Html Msg
view model =
  ul [class "list"] 
    (List.map render_list versions)



-- UPDATE
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN
main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }