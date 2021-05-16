let NeedJobSpec = ../NeedJobSpec/Type.dhall

let NeedPipelineSpec = ../NeedPipelineSpec/Type.dhall

let NeedProjectSpec = ../NeedProjectSpec/Type.dhall

in  { pipeline : Optional NeedPipelineSpec
    , job : Optional NeedJobSpec
    , project : Optional NeedProjectSpec
    }
