let Prelude = ../Prelude.dhall

let Bool/not = Prelude.Bool.not

let Bool/show = Prelude.Bool.show

let JSON = Prelude.JSON

let Map = Prelude.Map

let Optional/all = Prelude.Optional.all

let NeedJobSpec = ./Type.dhall

let NeedJobSpec/toJSON
    : NeedJobSpec -> JSON.Type
    = \(njs : NeedJobSpec) ->
        let obj
            : Map.Type Text JSON.Type
            = if    Optional/all Bool Bool/not njs.artifacts
              then  toMap
                      { job = JSON.string njs.job, artifacts = JSON.bool False }
              else  toMap { job = JSON.string njs.job }

        in  JSON.object obj

in  NeedJobSpec/toJSON
