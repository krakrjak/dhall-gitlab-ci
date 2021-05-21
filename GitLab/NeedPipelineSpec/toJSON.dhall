let Prelude = ../Prelude.dhall

let Bool/show = Prelude.Bool.show

let JSON = Prelude.JSON

let Map = Prelude.Map

let NeedPipelineSpec = ./Type.dhall

let NeedPipelineSpec/toJSON
    : NeedPipelineSpec -> JSON.Type
    = \(nps : NeedPipelineSpec) ->
        let obj
            : Map.Type Text JSON.Type
            = toMap
                { pipeline = JSON.string nps.pipeline
                , job = JSON.string nps.job
                }

        in  JSON.object obj

in  NeedPipelineSpec/toJSON
