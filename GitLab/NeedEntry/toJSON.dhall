let Prelude = ../Prelude.dhall

let JSON = Prelude.JSON

let NeedJobSpec = ../NeedJobSpec/Type.dhall

let NeedJobSpec/toJSON = ../NeedJobSpec/toJSON.dhall

let NeedProjectSpec = ../NeedProjectSpec/Type.dhall

let NeedProjectSpec/toJSON = ../NeedProjectSpec/toJSON.dhall

let NeedPipelineSpec = ../NeedPipelineSpec/Type.dhall

let NeedPipelineSpec/toJSON = ../NeedPipelineSpec/toJSON.dhall

let NeedEntry = ./Type.dhall

let NeedEntry/toJSON
    : NeedEntry → JSON.Type
    = λ(entry : NeedEntry) →
        merge
          { Pipeline = λ(p : NeedPipelineSpec) → NeedPipelineSpec/toJSON p
          , Project = λ(p : NeedProjectSpec) → NeedProjectSpec/toJSON p
          , Job = λ(j : NeedJobSpec) → NeedJobSpec/toJSON j
          }
          entry

in  NeedEntry/toJSON
