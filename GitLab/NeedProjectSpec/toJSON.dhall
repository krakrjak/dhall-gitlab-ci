let Prelude = ../Prelude.dhall

let Bool/show = Prelude.Bool.show

let JSON = Prelude.JSON

let Map = Prelude.Map

let NeedProjectSpec = ./Type.dhall

let NeedProjectSpec/toJSON
    : NeedProjectSpec -> JSON.Type
    = \(nps : NeedProjectSpec) ->
        let obj
            : Map.Type Text JSON.Type
            = toMap
                { project = JSON.string nps.project
                , job = JSON.string nps.job
                , ref = JSON.string nps.ref
                , artifacts = JSON.string (Bool/show nps.artifacts)
                }

        in  JSON.object obj

in  NeedProjectSpec/toJSON
